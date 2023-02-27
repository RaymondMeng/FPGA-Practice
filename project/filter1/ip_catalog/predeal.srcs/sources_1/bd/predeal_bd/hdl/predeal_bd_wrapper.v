//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Mon Feb 27 21:36:53 2023
//Host        : LAPTOP-IP0GL19C running 64-bit major release  (build 9200)
//Command     : generate_target predeal_bd_wrapper.bd
//Design      : predeal_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module predeal_bd_wrapper
   (clk,
    gateway_in,
    gateway_out);
  input clk;
  input [23:0]gateway_in;
  output [23:0]gateway_out;

  wire clk;
  wire [23:0]gateway_in;
  wire [23:0]gateway_out;

  predeal_bd predeal_bd_i
       (.clk(clk),
        .gateway_in(gateway_in),
        .gateway_out(gateway_out));
endmodule
