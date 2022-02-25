`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/17 21:27:16
// Design Name: 
// Module Name: key
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module key(
    input wire sys_clk,
    input wire rst_n,
    input wire key_in,
    output reg [3:0] led
);

//parameter define 
parameter CNT_MAX = 4000_000 - 1; //可以直接带常数，也可以用变量的方式

//internal signals
reg [21:0] cnt_time; //计数器
wire add_cnt_time;  //计时标志
wire end_cnt_time;  //结束计时标志

reg [1:0] key_dd; //用来拍打信号，避免亚稳态
reg key_flag; //按键标志
reg flag;
reg [3:0] led_r; //led控制

//按键信号拍打
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        key_dd <= 'd0;
    else
        key_dd <= {key_dd[0], key_in};//延迟两拍
end

//计数器
always @(posedge sys_clk or posedge rst_n) begin
    if(rst_n == 1'b0)
        cnt_time = 'd0;
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
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        flag <= 1'b0;
    else if(cnt_time == CNT_MAX) //延时后标志位置高
        flag <= 1'b1; //置高了
    else if(key_dd[1] == 1'b1) //如果按键没按下，标志位为0
        flag <= 1'b0;
    else
        flag <= flag; //这句很重要

end

//key_flag 按键消抖完成标志位
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        key_flag <= 1'b0;
    else if(cnt_time == CNT_MAX && flag == 1'b0) //相当于延时后再判断按键是否按下,源程序是flag == 1'b0，注意看这个是为什么
        key_flag <= 1'b1;
    else
        key_flag <= 1'b0;
end

//led_r 控制LED移动 好像不需要
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        led_r <= 4'b0001;
    else if(key_flag == 1'b1)
        led_r <= {led_r[2:0], led_r[3]}; //为什么这个是右移，想不通
    else
        led_r <= led_r; //这句很重要
end

//led
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        led <= 4'b1111;
    else
        led <= ~led_r;
end

endmodule
