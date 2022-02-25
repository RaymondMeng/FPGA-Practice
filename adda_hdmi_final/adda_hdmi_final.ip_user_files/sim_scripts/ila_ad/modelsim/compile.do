vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../adda_hdmi_final.srcs/sources_1/ip/ila_ad/hdl/verilog" \
"../../../../adda_hdmi_final.srcs/sources_1/ip/ila_ad/sim/ila_ad.v" \


vlog -work xil_defaultlib \
"glbl.v"

