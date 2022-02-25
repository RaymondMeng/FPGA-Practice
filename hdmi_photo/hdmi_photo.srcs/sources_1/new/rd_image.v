`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: wuhan university of technology
// Engineer: mengcheng
// 
// Create Date: 2022/01/31 18:04:42
// Design Name: hdmi
// Module Name: rd_image
// Project Name: 
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


module rd_image(
    input wire clk,
    input wire rst,
    input wire rd_req,
    output wire [23:0] rd_data
    );

parameter STOP_ADDR = 256*256 - 1;
reg [15:0] rd_addr;
wire [23:0] dout;

assign rd_data = dout;

//rd_addr
always @(posedge clk) begin
    if(rst == 1'b1)
        rd_addr <= 'd0;
    else if(rd_req == 1'b1) begin
        if(rd_addr == STOP_ADDR)
            rd_addr <= 'd0;
        else
            rd_addr <= rd_addr + 1'b1;
    end
end

rom_image inst_rom(
    .clka(clk),
    .addra(rd_addr), //读取rom地址
    .douta(dout)  //对应地址的rom数据
);

endmodule
