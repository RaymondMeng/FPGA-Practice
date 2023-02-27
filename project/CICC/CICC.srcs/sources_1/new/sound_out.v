`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/02/27 10:57:27
// Design Name: 
// Module Name: sound_out
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


module sound_out #(
    parameter sample_bits = 24      //²ÉÑùÂÊ32000Hz
)(
    input                      sclk,
    input                      output_en,
    input  [sample_bits-1 : 0] parallel_dat,
    output                     ws,
    output                     sdata
    );

wire                    dout_en;
reg                     sdat;
reg [sample_bits-1 : 0] para_dat;
reg [4:0]               count;
reg                     reg_ws;

assign ws = reg_ws;
assign sdata = sdat;

assign dout_en = output_en && !reg_ws;

always @(negedge sclk) begin
    if (dout_en && count < 'd33) begin
        reg_ws <= 1'b0;
        count <= count + 1'b1;
    end
    else begin
        reg_ws <= 1'b1;
        count <= 'd0;
    end
end

//output sdata
always @(posedge sclk) begin
    if (dout_en && count < 'd25) begin
        para_dat <= parallel_dat;
        sdat <= para_dat[sample_bits-1];
        para_dat <= {para_dat[sample_bits-2:0], 1'b0}; //MSB->LSB
    end
    else begin
        sdat <= sdat;
        para_dat <= para_dat;
    end
end

endmodule
