`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/02/27 16:07:53
// Design Name: 
// Module Name: top_tb
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


module top_tb;

reg sdata, rst_n, clk_32k, clk_2048k;
wire sclk, lrck, ws, encode_clk, encode_out;

parameter period = 128;

initial begin
    sdata = 1'b0;
    rst_n = 1'b0;
    clk_2048k = 1'b0;
    clk_32k = 1'b0;
    #100 rst_n = 1'b1;
    forever begin
        #(period) clk_32k = ~clk_32k;        
    end 
end

initial begin
    #100 forever begin
        #(period/64) clk_2048k = ~clk_2048k;
    end
end

always @(posedge sclk or negedge rst_n) begin
    if(rst_n == 1'b0)begin
        sdata <= 1'b0;
    end
    else if (lrck == 1'b0) begin
        sdata <= 1'b1;
    end
end


top top_inst(
    .sdata(sdata),
    .rst_n(rst_n),
    .clk_2048k(clk_2048k),
    .clk_32k(clk_32k),
    .sclk(sclk),
    .lrck(lrck),
    .ws(ws),
    .encode_clk(encode_clk),
    .encode_out(encode_out)
);

endmodule
