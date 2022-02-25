`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/26 12:08:21
// Design Name: 
// Module Name: tb_fifo_test
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


module tb_fifo_test();

parameter MAX = 256 - 1;
parameter RD_START = 128 - 1;

reg sys_clk;
reg rst_n;

fifo_test #(
    .MAX(MAX),
    .RD_START(RD_START)
) inst_fifo_test(
    .sys_clk(sys_clk),
    .rst_n(rst_n)
);

initial begin
    sys_clk = 0;
    forever #(10) sys_clk = ~ sys_clk;
end

initial begin
    rst_n <= 0;
    #200
    rst_n <= 1;
end

endmodule
