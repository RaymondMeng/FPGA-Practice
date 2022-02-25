//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Mon Nov  8 21:01:40 2021
//Host        : LAPTOP-M107SEOD running 64-bit major release  (build 9200)
//Command     : generate_target Base_Zynq_MPSoC_wrapper.bd
//Design      : Base_Zynq_MPSoC_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Base_Zynq_MPSoC_wrapper
   (led_4bits_tri_o);
  output [3:0]led_4bits_tri_o;

  wire [3:0]led_4bits_tri_o;

  Base_Zynq_MPSoC Base_Zynq_MPSoC_i
       (.led_4bits_tri_o(led_4bits_tri_o));
endmodule
