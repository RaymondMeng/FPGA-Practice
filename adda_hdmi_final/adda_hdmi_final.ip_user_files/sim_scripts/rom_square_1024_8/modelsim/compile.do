vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../adda_hdmi_final.srcs/sources_1/ip/rom_square_1024_8/sim/rom_square_1024_8.v" \


vlog -work xil_defaultlib \
"glbl.v"

