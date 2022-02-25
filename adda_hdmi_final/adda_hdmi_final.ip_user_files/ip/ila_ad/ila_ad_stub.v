// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Feb 25 23:57:27 2022
// Host        : LAPTOP-IP0GL19C running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Xilinx/vivado_project/adda_hdmi_final/adda_hdmi_final.srcs/sources_1/ip/ila_ad/ila_ad_stub.v
// Design      : ila_ad
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2018.3" *)
module ila_ad(clk, probe0)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[7:0]" */;
  input clk;
  input [7:0]probe0;
endmodule
