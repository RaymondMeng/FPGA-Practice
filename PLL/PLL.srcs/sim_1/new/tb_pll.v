`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/21 11:18:16
// Design Name: 
// Module Name: tb_pll_led
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


module tb_pll_led();

    parameter CNT_MAX = 50000 - 1;

    reg sys_clk;
    wire [2:0] led;
    reg rst_n;

    pll_test #(
            .CNT_MAX(CNT_MAX)
        ) inst_pll_led (
            .clk (sys_clk),
            .rst_n (rst_n),
            .led (led)
        );

    initial begin
        clk = 1;
        forever #(10) sys_clk =~ sys_clk;
    end

    initial begin
        rst_n = 0;
        #500;
        rst_n = 1;
    end

endmodule
