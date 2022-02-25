vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr "+incdir+../../../ipstatic" \
"../../../../adda_hdmi_final.srcs/sources_1/ip/clock/clock_clk_wiz.v" \
"../../../../adda_hdmi_final.srcs/sources_1/ip/clock/clock.v" \


vlog -work xil_defaultlib \
"glbl.v"

