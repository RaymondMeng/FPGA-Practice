vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../FIFO.srcs/sources_1/ip/fifo_wr256_8_rd256_8/sim/fifo_wr256_8_rd256_8.v" \


vlog -work xil_defaultlib \
"glbl.v"

