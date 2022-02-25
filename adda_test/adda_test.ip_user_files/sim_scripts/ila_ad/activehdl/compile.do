vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../adda_test.srcs/sources_1/ip/ila_ad/hdl/verilog" \
"C:/Data_Disk/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Data_Disk/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Data_Disk/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../adda_test.srcs/sources_1/ip/ila_ad/hdl/verilog" \
"../../../../adda_test.srcs/sources_1/ip/ila_ad/sim/ila_ad.v" \

vlog -work xil_defaultlib \
"glbl.v"

