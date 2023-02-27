`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/02/26 10:18:34
// Design Name: 
// Module Name: top
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


module top(
  //i2s decode
    output sclk, //2.048MHz
    output lrck, //32KHz
    input  sdata,
    input  rst_n,
    input  clk_32k,  //仿真给出
    input  clk_2048k,
  //i2s encode
    output ws,
    output encode_clk,
    output encode_out
    );

wire        dat_end;
wire        wr_en;
reg         rd_en;
wire        empty, full;
wire        i2s_data;
wire        ip_clk;
wire [23:0] pre_dout;
reg         rd_en_1;
wire        dout_en;
wire [23:0] sound_left;

assign encode_clk = clk_2048k;
assign sclk = clk_2048k;
assign lrck = clk_32k;


microphone #(24) microphone_inst(   //音频I2S解码
    .sclk(sclk),
    .lrck(lrck),
    .sdata(sdata),
    .reset_n(rst_n),
    .sound_left(sound_left),
    .dat_end(dat_end)
);

assign ip_clk = rd_en ? sclk : 1'b0;

predeal_0 predeal_0_inst (   //预加重IP
  .gateway_in(i2s_data),    // input wire [23 : 0] gateway_in
  .clk(sclk),                  // input wire clk
  .gateway_out(pre_dout)  // output wire [23 : 0] gateway_out
);

assign wr_en = dat_end && !full;

always @(posedge lrck) begin //读延迟写两个周期
  rd_en <= wr_en;
  rd_en_1 <= rd_en && !empty;
end

I2S_fifo I2S_fifo_inst (
  .clk(lrck),      // input wire clk
  .srst(rst_n),    // input wire srst
  .din(sound_left),      // input wire [23 : 0] din
  .wr_en(wr_en),  // input wire wr_en
  .rd_en(rd_en_1),  // input wire rd_en
  .dout(i2s_data),    // output wire [23 : 0] dout
  .full(full),    // output wire full
  .empty(empty)  // output wire empty
);

//音频编码输出 并转串
assign dout_en = rd_en_1;
sound_out #(24) sound_out_inst(
  .sclk(sclk),
  .output_en(dout_en),
  .parallel_dat(pre_dout),
  .ws(ws),
  .sdata(encode_out)
);

endmodule
