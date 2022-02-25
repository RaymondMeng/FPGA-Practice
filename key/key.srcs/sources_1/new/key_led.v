`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: wuhan university of technology
// Engineer: mengcheng
// 
// Create Date: 2022/01/17 18:50:09
// Design Name: key_led
// Module Name: key_led
// Project Name: key_led
// Target Devices: xc7z020clg400-2
// Tool Versions: 
// Description: 按键控制LED
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
/***注意区分wire和reg的区别*****/

module key_led(
    input   wire        rst_n,
    input   wire        sys_clk,
    input   wire  [2:0]  key,
    output  wire  [2:0]  led
    );

//对输入的信号进行拍打，消除亚稳态,实质是数据缓冲

always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        key_dd = 'd0; //清零
    else
        key_dd <= {key_dd[2:0], key}; //位拼接法 延迟一个周期
end

//输出的LED为拍打过后的结果
assign led = key_dd[5:3]; //直接通过组合逻辑硬件上联系

endmodule
