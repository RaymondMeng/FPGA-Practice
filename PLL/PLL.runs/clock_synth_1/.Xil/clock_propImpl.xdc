set_property SRC_FILE_INFO {cfile:c:/Users/Raymond_Meng/Documents/xlinx_FPGA/vivado_projects/PLL/PLL.srcs/sources_1/ip/clock/clock.xdc rfile:../../../PLL.srcs/sources_1/ip/clock/clock.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.2
