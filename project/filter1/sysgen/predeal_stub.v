`timescale 1 ns / 10 ps
// Generated from Simulink block 
module predeal_stub (
  input [24-1:0] gateway_in,
  input clk,
  output [24-1:0] gateway_out
);
  predeal sysgen_dut (
    .gateway_in(gateway_in),
    .clk(clk),
    .gateway_out(gateway_out)
  );
endmodule
