`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: wuhan university of techno;ogy
// Engineer: mengcheng
// 
// Create Date: 2022/01/22 11:24:50
// Design Name: 
// Module Name: tb_ram_pp
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


module tb_ram_pp();

parameter MAX = 256 - 1;

reg sys_clk;
reg rst_n;
wire [7:0] rd_data;


ram_pp #(
    .MAX(MAX)
) inst_ram_pp(
    .sys_clk(sys_clk),
    .rst_n    (rst_n),
    .rd_data(rd_data)
);

initial begin
    sys_clk = 1;
    forever #(10) sys_clk =~ sys_clk;
end

initial begin
    rst_n <= 0;
    #200;
    rst_n <= 1;
end

endmodule
