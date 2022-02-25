vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../ram_pp.srcs/sources_1/ip/ram_wr256_8_rd256_8/sim/ram_wr256_8_rd256_8.v" \


vlog -work xil_defaultlib \
"glbl.v"

