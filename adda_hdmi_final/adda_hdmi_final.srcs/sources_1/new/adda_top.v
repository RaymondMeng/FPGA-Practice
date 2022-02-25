
`timescale 1ns / 1ps
module adda_hdmi_top(
	//system related port
	input 	wire			clk 	 		,
	input 	wire 			rst_n 			,
	
    input   wire            key_in             ,

	//adda related port	
	output 	wire 			da_clk 			, //ROM读取时钟
	output 	wire	[7:0]	da_data 		, //ROM读取到的数据
	output 	wire 			ad_clk 			, //AD采样时钟
	input 	wire	[7:0]	ad_data 		, //AD采样数据

 	//hdmi transfer	
	output 	wire 			hdmi_oen		,  //输出使能信号
	output 	wire 			hdmi_tx_clk_n	,  //差分时钟
	output 	wire 			hdmi_tx_clk_p	,
	output 	wire 			hdmi_tx_chn_r_n	, //差分数据
	output 	wire 			hdmi_tx_chn_r_p	,
	output 	wire 			hdmi_tx_chn_g_n	,
	output 	wire 			hdmi_tx_chn_g_p	,
	output 	wire 			hdmi_tx_chn_b_n	,
	output 	wire 			hdmi_tx_chn_b_p	
    );



wire 			clk_50m 	;
wire 			clk_25m 	;
wire 			clk1x		;
wire 			clk5x 		;
wire 			rst 		;
wire 			sys_clk 	;
wire 			locked1		;
wire 			locked2 	;


wire 			hdmi_tx_hs	; //行同步信号
wire 			hdmi_tx_vs	; //场同步信号
wire 			hdmi_tx_de	; //输出数据有效信号
wire 	[23:0]	hdmi_td   	; //RGB

wire add_cnt_time;
wire end_cnt_time;
reg flag;
reg [1:0] key_flag;
reg [1:0] key_dd;
reg [21:0] cnt_time;
parameter CNT_MAX = 4000_000 - 1; //可以直接带常数，也可以用变量的方式


assign 	rst = ~rst_n ;
assign 	ad_clk = clk_25m ;
assign 	da_clk = clk_50m ;
assign  hdmi_oen = 1'b1;

//按键检测消抖
//按键信号拍打
always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        key_dd <= 'd0;
    else
        key_dd <= {key_dd[0], key_in};//延迟两拍
end

//计数器
always @(posedge clk or posedge rst_n) begin
    if(rst_n == 1'b0)
        cnt_time <= 'd0;
    else if(add_cnt_time)begin
        if(end_cnt_time)
            cnt_time <= cnt_time;
        else 
            cnt_time <= cnt_time + 1'b1; 
    end
    else 
        cnt_time = 'd0;
end

assign add_cnt_time = (key_dd[1] == 1'b0); //判断是否开始计时，按键按下时即对应1'b0
assign end_cnt_time = add_cnt_time && cnt_time == CNT_MAX; //在计时以及计满同时满足才能将终止计时标志位加一


//flag 延时标志位
always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        flag <= 1'b0;
    else if(cnt_time == CNT_MAX) //延时后标志位置高
        flag <= 1'b1; //置高了
    else if(key_dd[1] == 1'b1) //如果按键没按下，标志位为0
        flag <= 1'b0;
    else
        flag <= flag; //这句很重要

end

//key_flag:按键次数检测  nb!
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        key_flag <= 'd0;
    else if(cnt_time == CNT_MAX && flag == 1'b0) //相当于延时后再判断按键是否按下,源程序是flag == 1'b0，顺带松手检测
        if(key_flag == 2'b11)
            key_flag <= 'd0;
        else
            key_flag <= key_flag + 1'b1;
    else
        key_flag <= key_flag;
end

assign choice = key_flag;


  	clock inst_clock(          //时钟IP
	    .clk_out1(clk_50m),     // output clk_out1
	    .clk_out2(clk_25m),     // output clk_out2
	    .reset(~rst_n), // input reset
	    .locked(locked1),       	// output locked
	    .clk_in1(clk)		// input clk_in1
    ); 

  hdmi_clock inst_hdmi_clock   //hdmi时钟
   (
    // Clock out ports
    .clk_out1(clk1x),     	// output clk_out1    148.5MHz
    .clk_out2(clk5x),     	// output clk_out2    742.5MHz
    .reset(~rst_n), 		// input reset
    .locked(locked2),       // output locked
    .clk_in1(clk_50m)  			// input clk_in1
    );    


   	gen_wave_data inst_gen_wave_data (
   		.clk(clk_50m), 
   		.rst(rst), 
        .choice(choice),
   		.da_data(da_data)
   	);

	wave_mix inst_wave_mix (
		.ad_clk      (clk_25m),
		.ad_data     (ad_data),
		.hdmi_tx_clk (clk1x),
		.rst         (rst),
		.hdmi_tx_hs  (hdmi_tx_hs),
		.hdmi_tx_vs  (hdmi_tx_vs),
		.hdmi_tx_de  (hdmi_tx_de),
		.hdmi_td     (hdmi_td)
	);


	hdmi_trans inst_hdmi_trans  //hdmi显示
	(
		.clk1x           (clk1x),
		.clk5x           (clk5x),
		.rst             (rst),
		.image_r         (hdmi_td[23:16]),
		.image_g         (hdmi_td[15:8]),
		.image_b         (hdmi_td[7:0]),
		.vsync           (hdmi_tx_vs),  //信号线 hdmi top层的信号线
		.hsync           (hdmi_tx_hs),
		.de              (hdmi_tx_de),
		.hdmi_tx_clk_n   (hdmi_tx_clk_n),
		.hdmi_tx_clk_p   (hdmi_tx_clk_p),
		.hdmi_tx_chn_r_n (hdmi_tx_chn_r_n),
		.hdmi_tx_chn_r_p (hdmi_tx_chn_r_p),
		.hdmi_tx_chn_g_n (hdmi_tx_chn_g_n),
		.hdmi_tx_chn_g_p (hdmi_tx_chn_g_p),
		.hdmi_tx_chn_b_n (hdmi_tx_chn_b_n),
		.hdmi_tx_chn_b_p (hdmi_tx_chn_b_p)
	);

ila_da inst_da_ila(
    .clk(clk_50m),
    .probe0(da_data)
);

ila_ad inst_ad_ila(
    .clk(clk_25m),
    .probe0(ad_data)
);  


endmodule
