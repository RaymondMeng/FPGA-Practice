`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: wuhan university of technology
// Engineer: mengcheng
// 
// Create Date: 2022/01/17 14:55:23
// Design Name: led_toggle
// Module Name: led_mix
// Project Name: led_mix
// Target Devices: xc7z020clg400-2
// Tool Versions: 
// Description: PL端LED单数和双数转换亮灭
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module led_mix(
    input wire rst_n,
    input wire sys_clk,
    output reg [3:0] led
);

reg [27:0] cnt;
wire add_cnt; //加一标志
wire end_cnt; //结束标志

assign add_cnt = 1;
assign end_cnt = add_cnt && cnt == 50_000_000 - 1;

//cnt 就是always语句，一直循环
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        cnt <= 'd0; //计数器清零
    else if(add_cnt) 
        if(end_cnt) //如果计到末尾了
            cnt <= 'd0; //计数器清零
        else
            cnt <= cnt + 1'b1; //别忘了非阻塞赋值
end

//LED 也是always语句
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        led <= 4'b0101;
    else if(end_cnt) //计满一周期后，反转LED电平
        led <= ~led;
    else
        led <= led;
end

endmodule
