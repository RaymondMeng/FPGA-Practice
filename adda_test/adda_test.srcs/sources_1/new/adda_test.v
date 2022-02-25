`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: wuhan university of technology
// Engineer: mengcheng
// 
// Create Date: 2022/02/01 09:38:45
// Design Name: da_ad
// Module Name: adda_test
// Project Name: da_ad
// Target Devices: xc7z020clg400-2
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


module adda_test(
input wire clk,
input wire rst_n,
output wire ad_clk, //ad模块时钟
input wire [7:0] ad_data, //输入ad转换过的数据

output wire da_clk,      //da模块输出时钟
output wire [7:0] da_data //da模块输出数据
    );

wire clk_50m;
wire clk_20m;
wire sys_clk;
wire locked;
reg [8:0] rom_addr;

assign ad_clk = clk_20m;
assign da_clk = clk_50m;

clock inst_clock(
    .clk_out1(clk_50m),
    .clk_out2(clk_20m),
    .reset(~rst_n),
    .locked(locked),
    .clk_in1(clk)
);

//rom寻址器
always @(posedge clk_50m or negedge rst_n) begin
    if(rst_n == 1'b0)
        rom_addr <= 'd0;
    else
        rom_addr <= rom_addr + 1'b1;
end

ram8_512 inst_rom(
    .clka(clk_50m),
    .addra(rom_addr),
    .douta(da_data)
);

ila_da inst_da_ila(
    .clk(clk_50m),
    .probe0(da_data)
);

ila_ad inst_ad_ila(
    .clk(clk_20m),
    .probe0(ad_data)
);


endmodule
