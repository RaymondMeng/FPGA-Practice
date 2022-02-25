vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../adda_test.srcs/sources_1/ip/ila_da/hdl/verilog" \
"C:/Data_Disk/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Data_Disk/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Data_Disk/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../adda_test.srcs/sources_1/ip/ila_da/hdl/verilog" \
"../../../../adda_test.srcs/sources_1/ip/ila_da/sim/ila_da.v" \

vlog -work xil_defaultlib \
"glbl.v"

