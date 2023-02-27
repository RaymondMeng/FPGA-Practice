`ifndef xlConvPkgIncluded
`include "conv_pkg.v"
`endif

`timescale 1 ns / 10 ps
// Generated from Simulink block predeal_struct
module predeal_struct (
  input [24-1:0] gateway_in,
  input clk_1,
  input ce_1,
  output [24-1:0] gateway_out
);
  wire [24-1:0] convert_dout_net;
  wire clk_net;
  wire [24-1:0] gateway_in_net;
  wire [43-1:0] digital_fir_filter_m_axis_data_tdata_real_net;
  wire ce_net;
  assign gateway_in_net = gateway_in;
  assign gateway_out = convert_dout_net;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  xlpredeal_fir_compiler_v7_2_i0_375bcf09c69998f49a8e31d46327de04 digital_fir_filter (
    .s_axis_data_tdata_real(gateway_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .clk_logic_1(clk_net),
    .ce_logic_1(ce_net),
    .m_axis_data_tdata_real(digital_fir_filter_m_axis_data_tdata_real_net)
  );
  predeal_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(40),
    .din_width(43),
    .dout_arith(2),
    .dout_bin_pt(22),
    .dout_width(24),
    .latency(1),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  convert (
    .clr(1'b0),
    .en(1'b1),
    .din(digital_fir_filter_m_axis_data_tdata_real_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert_dout_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
module predeal_default_clock_driver (
  input predeal_sysclk,
  input predeal_sysce,
  input predeal_sysclr,
  output predeal_clk1,
  output predeal_ce1
);
  xlclockdriver #(
    .period(1),
    .log_2_period(1)
  )
  clockdriver (
    .sysclk(predeal_sysclk),
    .sysce(predeal_sysce),
    .sysclr(predeal_sysclr),
    .clk(predeal_clk1),
    .ce(predeal_ce1)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
(* core_generation_info = "predeal,sysgen_core_2018_3,{,compilation=IP Catalog,block_icon_display=Default,family=zynq,part=xc7z010,speed=-2,package=clg400,synthesis_language=verilog,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=1,interface_doc=0,ce_clr=0,clock_period=20,system_simulink_period=3.125e-05,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=10,convert=1,fir_macro=1,}" *)
module predeal (
  input [24-1:0] gateway_in,
  input clk,
  output [24-1:0] gateway_out
);
  wire ce_1_net;
  wire clk_1_net;
  predeal_default_clock_driver predeal_default_clock_driver (
    .predeal_sysclk(clk),
    .predeal_sysce(1'b1),
    .predeal_sysclr(1'b0),
    .predeal_clk1(clk_1_net),
    .predeal_ce1(ce_1_net)
  );
  predeal_struct predeal_struct (
    .gateway_in(gateway_in),
    .clk_1(clk_1_net),
    .ce_1(ce_1_net),
    .gateway_out(gateway_out)
  );
endmodule
