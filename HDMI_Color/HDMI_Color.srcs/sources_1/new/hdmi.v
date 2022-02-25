`timescale 1ns / 1ps
module hdmi_trans_top(
	input	wire 			clk 		,
	input 	wire			rst_n 		,
	output 	wire 			hdmi_oen	, //这是什么？
	output 	wire 			hdmi_tx_clk_n	,
	output 	wire 			hdmi_tx_clk_p	,
	output 	wire 			hdmi_tx_chn_r_n	,
	output 	wire 			hdmi_tx_chn_r_p	,
	output 	wire 			hdmi_tx_chn_g_n	,
	output 	wire 			hdmi_tx_chn_g_p	,
	output 	wire 			hdmi_tx_chn_b_n	,
	output 	wire 			hdmi_tx_chn_b_p	
);

parameter CNT_MAX = 1000;

wire locked;
wire rst;
wire clk1x;
wire clk5x;
wire [7:0] rgb_r;
wire [7:0] rgb_g;
wire [7:0] rgb_b;
wire       vpg_de;
wire       vpg_hs;
wire       vpg_vs;
reg        hdmi_oen_r;
reg [10:0] cnt;

assign rst = ~locked;
assign hdmi_oen = hdmi_oen_r;

always @(posedge clk1x) begin
    if(rst == 1'b1)
        cnt <= 'd0;
    else if(cnt < CNT_MAX)
        cnt <= cnt + 1'b1;
    else
        cnt <= cnt;
end

always @(posedge clk1x) begin
    if(rst == 1'b1)
        hdmi_oen_r <= 1'b0;
    else if(cnt == CNT_MAX)
        hdmi_oen_r <= 1'b1;
end

//例化
clock inst_clock(
    .clk_out1(clk1x),     // output clk_out1
    .clk_out2(clk5x),     // output clk_out2
	// Status and control signals
	.resetn(rst_n), 		// input resetn
	.locked(locked),       	// output locked
	// Clock in ports
	.clk_in1(clk) 		 // input clk_in1
);

vga_shift  inst_vga_shift (
		.rst      (rst),
		.vpg_pclk (clk1x),
		.vpg_de   (vpg_de),
		.vpg_hs   (vpg_hs),
		.vpg_vs   (vpg_vs),
		.rgb_r    (rgb_r),
		.rgb_g    (rgb_g),
		.rgb_b    (rgb_b)
	);

	hdmi_trans inst_hdmi_trans(
		.clk1x           (clk1x),
		.clk5x           (clk5x),
		.rst             (rst),
		.image_r         (rgb_r),
		.image_g         (rgb_g),
		.image_b         (rgb_b),
		.vsync           (vpg_vs),
		.hsync           (vpg_hs),
		.de              (vpg_de),
		.hdmi_tx_clk_n   (hdmi_tx_clk_n),
		.hdmi_tx_clk_p   (hdmi_tx_clk_p),
		.hdmi_tx_chn_r_n (hdmi_tx_chn_r_n),
		.hdmi_tx_chn_r_p (hdmi_tx_chn_r_p),
		.hdmi_tx_chn_g_n (hdmi_tx_chn_g_n),
		.hdmi_tx_chn_g_p (hdmi_tx_chn_g_p),
		.hdmi_tx_chn_b_n (hdmi_tx_chn_b_n),
		.hdmi_tx_chn_b_p (hdmi_tx_chn_b_p)
	);  

endmodule