vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr "+incdir+../../../ipstatic" \
"../../../../hdmi_photo.srcs/sources_1/ip/clock/clock_clk_wiz.v" \
"../../../../hdmi_photo.srcs/sources_1/ip/clock/clock.v" \


vlog -work xil_defaultlib \
"glbl.v"

