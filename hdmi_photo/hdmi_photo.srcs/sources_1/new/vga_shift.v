`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: wuhan university of tech nology
// Engineer: mengcheng
// 
// Create Date: 2022/01/29 12:52:22
// Design Name: hdmi
// Module Name: hdmi
// Project Name: hdmi
// Target Devices: 
// Tool Versions: 
// Description: 搞定！！！
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module vga_shift(
input wire rst,
input wire vpg_pclk, //像素时钟
output wire [23:0] rd_data,
output wire rd_req,
output reg vpg_de, //输出数据有效信号
output reg vpg_hs, //行同步信号
output reg vpg_vs, //场同步信号
output wire [7:0] rgb_r, //输出图像值
output wire [7:0] rgb_g, //输出图像值
output wire [7:0] rgb_b  //输出图像值
);

parameter H_TOTAL = 2200 - 1; //一行需要计数的值
parameter H_SYNC = 44 - 1; //行同步计数值
parameter H_START = 190 - 1; //行图像数据有效开始计数值
parameter H_END = 2110 - 1; //行图像数据有效结束计数值
parameter V_TOTAL = 1125 - 1; //场总共需要计数的值
parameter V_SYNC = 5 - 1; //场同步计数值
parameter V_START = 41 - 1; //场图像数据有效开始计数值
parameter V_END = 1121 - 1; //场图像数据有效结束计数值
parameter SQUARE_X = 256; //方块的宽度
parameter SQUARE_Y = 256; //方块的长度
parameter SCREEN_X = 1920; //屏幕水平长度
parameter SCREEN_Y = 1080; //屏幕垂直长度

//signal declarations
reg [12:0] cnt_h; //行计数器
reg [12:0] cnt_v; //场计数器
reg [11:0] x; //方块左上角横坐标
reg flag_x; //方块水平移动方向指示信号
reg [11:0] y; //方块左上角纵坐标
reg flag_y; //方块垂直移动方向指示信号
reg [23:0] rgb;

reg 	rd_req_r;
assign {rgb_r, rgb_g, rgb_b} = rgb;
assign rd_req = rd_req_r;
//行计数器
always @(posedge vpg_pclk) begin
    if(rst == 1'b1)
        cnt_h <= 'd0;
    else if(cnt_h == H_TOTAL) //计数到最大值，清零
        cnt_h <= 'd0;
    else if(cnt_h != H_TOTAL)
        cnt_h <= cnt_h + 1'b1; //还没计数到最大值时，每个时钟周期加一
end

//场计数器
always @(posedge vpg_pclk) begin
    if(rst == 1'b1)
        cnt_v <= 'd0;
    else if(cnt_v == V_TOTAL && cnt_h == H_TOTAL) //场计数器计数到最大值时，清零1，即一帧扫描完结束即完成一个场的计数
        cnt_v <= 'd0;
    else if(cnt_h == H_TOTAL)
        cnt_v <= cnt_v + 1'b1; //一行扫描结束，场计数器加一，仔细想想
end

//行同步信号 就是为了确定一行的起始和结束
always @(posedge vpg_pclk) begin
    if(rst == 1'b1)
        vpg_hs <= 1'b1;
    else if(cnt_h == H_TOTAL)
        vpg_hs <= 1'b1; //行同步结束
    else if(cnt_h == H_SYNC)
        vpg_hs <= 1'b0; //开始行同步
end

//场同步信号 为了确定VGA宽的
always @(posedge vpg_pclk) begin
    if(rst == 1'b1)
        vpg_vs <= 1'b1;
    else if(cnt_v == V_TOTAL && cnt_h == H_TOTAL)
        vpg_vs <= 1'b1;
    else if(cnt_v == V_SYNC && cnt_h == H_TOTAL)
        vpg_vs <= 1'b0;
end

//有效数据信号
always @(posedge vpg_pclk) begin
    if(rst == 1'b1)
        vpg_de <= 1'b0;
    else if((cnt_h >= H_START) && (cnt_h < H_END) && (cnt_v >= V_START) && (cnt_v < V_END))
        vpg_de <= 1'b1; //有效信号
    else 
        vpg_de <= 1'b0;
end

//移动方块的左上角水平方向坐标
always @(posedge vpg_pclk) begin
    if(rst == 1'b1)
        x <= 'd0;
    else if(flag_x == 1'b0 && cnt_v == V_TOTAL && cnt_h == H_TOTAL) //移动方向为向右，一个像素完成显示后，开始向右移动
        x <= x + 1'b1;
    else if(flag_x == 1'b1 && cnt_v == V_TOTAL && cnt_h == H_TOTAL) //移动方向为向左，一个像素完成显示后，开始向左移动
        x <= x - 1'b1;
end

//移动方块左上角水平移动方向指示信号 向左还是向右移动
always @(posedge vpg_pclk) begin
    if(rst == 1'b1)
        flag_x <=1'b0; //默认向右移动                                          
    else if(flag_x == 1'b0 && cnt_v == V_TOTAL && cnt_h == H_TOTAL && x == (H_END - H_START - SQUARE_X - 1'b1)) //方块移动到右边界后，开始向左移动
        flag_x <= 1'b1; 
    else if(flag_x == 1'b1 && cnt_v == V_TOTAL && cnt_h == H_TOTAL && x == 'd1) //在左边界时，向右移动
        flag_x <= 1'b0;
end


//移动方块的左上角垂直方向坐标 向上还是向下移动
always @(posedge vpg_pclk ) begin
	if (rst == 1'b1) begin
		y <= 'd0;
	end
	else if (flag_y == 1'b0 && cnt_v ==V_TOTAL && cnt_h == H_TOTAL) begin
		y <= y + 1'b1;
	end
	else if (flag_y == 1'b1 && cnt_v ==V_TOTAL && cnt_h == H_TOTAL) begin
		y <= y - 1'b1;
	end
end

//移动方块左上角垂直移动方向指示信号
always @(posedge vpg_pclk) begin
    if(rst == 1'b1)
        flag_y <= 1'b0; //默认向下移动
    else if(flag_y == 1'b0 && cnt_v == V_TOTAL && cnt_h == H_TOTAL && y == (V_END - V_START - SQUARE_Y - 1'b1)) //方块移动到下边界时，开始向上移动
        flag_y <= 1'b1;
    else if(flag_y == 1'b1 && cnt_v == V_TOTAL && cnt_h == H_TOTAL && y == 'd1) //每个时钟周期向下移动一个像素点
        flag_y <= 1'b0;
end


always @(posedge vpg_pclk) begin
    if(rst == 1'b1)
        rd_req_r <= 1'b0;
    else if(cnt_h >= H_START + x -2 && cnt_h < H_START + SQUARE_X + x -2 && cnt_v >= V_START + y && cnt_v < V_START + SQUARE_Y + y) //行计数器提前两拍，这样才能与数据同步
        rd_req_r <= 1'b1; //读取rom请求标志位置高
    else
        rd_req_r <= 1'b0;
end

//rgb 像素点操作
always @(posedge vpg_pclk) begin
    if(rst == 1'b1)
        rgb <= 'd0;
    else if(cnt_h >= H_START + x && cnt_h < H_START + x + SQUARE_X && cnt_v >= V_START + y && cnt_v < V_START + SQUARE_Y + y) //显示方块
        rgb <= {rd_data[7:0],rd_data[15:8],rd_data[23:16]};//输出方块图像
    else if(cnt_h >= H_START && cnt_h < H_END && cnt_v >= V_START && cnt_v < V_END && cnt_v[4:0] >= 'd20) //是不是傻，就是在32内循环  2200/32 = 68.75
        rgb <= 24'h00FF00; //green                                                              green
    else if(cnt_h >= H_START && cnt_h < H_END && cnt_v >= V_START && cnt_v < V_END && (cnt_v[4:0] >= 'd10 && cnt_v[4:0] < 'd20)) //这里没看懂
        rgb <= 24'h0000FF; //bulue                                                               blue      
    else if(cnt_h >= H_START && cnt_h < H_END && cnt_v >= V_START && cnt_v < V_END && cnt_v[4:0] < 'd10)
        rgb <= 24'hFF0000; //red                                                                 red
    else
        rgb <= 'd0;
end

endmodule
