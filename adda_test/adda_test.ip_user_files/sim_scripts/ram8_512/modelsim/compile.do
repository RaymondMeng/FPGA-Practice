vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../adda_test.srcs/sources_1/ip/ram8_512/sim/ram8_512.v" \


vlog -work xil_defaultlib \
"glbl.v"

