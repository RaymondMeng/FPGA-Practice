vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../ada_hdmi.srcs/sources_1/ip/rom8_1024/sim/rom8_1024.v" \


vlog -work xil_defaultlib \
"glbl.v"

