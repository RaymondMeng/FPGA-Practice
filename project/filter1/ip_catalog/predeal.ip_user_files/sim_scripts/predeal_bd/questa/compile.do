vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xbip_utils_v3_0_9
vlib questa_lib/msim/axi_utils_v2_0_5
vlib questa_lib/msim/fir_compiler_v7_2_11
vlib questa_lib/msim/xil_defaultlib

vmap xbip_utils_v3_0_9 questa_lib/msim/xbip_utils_v3_0_9
vmap axi_utils_v2_0_5 questa_lib/msim/axi_utils_v2_0_5
vmap fir_compiler_v7_2_11 questa_lib/msim/fir_compiler_v7_2_11
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vcom -work xbip_utils_v3_0_9 -64 -93 \
"../../../../predeal.srcs/sources_1/bd/predeal_bd/ip/predeal_bd_predeal_1_0/predeal_fir_compiler_v7_2_i0/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_5 -64 -93 \
"../../../../predeal.srcs/sources_1/bd/predeal_bd/ip/predeal_bd_predeal_1_0/predeal_fir_compiler_v7_2_i0/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work fir_compiler_v7_2_11 -64 -93 \
"../../../../predeal.srcs/sources_1/bd/predeal_bd/ip/predeal_bd_predeal_1_0/predeal_fir_compiler_v7_2_i0/hdl/fir_compiler_v7_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/predeal_bd/ip/predeal_bd_predeal_1_0/predeal_fir_compiler_v7_2_i0/sim/predeal_fir_compiler_v7_2_i0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../predeal.srcs/sources_1/bd/predeal_bd/ipshared/2d3f/hdl" \
"../../../../predeal.srcs/sources_1/bd/predeal_bd/ipshared/2d3f/hdl/synth_reg.v" \
"../../../../predeal.srcs/sources_1/bd/predeal_bd/ipshared/2d3f/hdl/synth_reg_w_init.v" \
"../../../../predeal.srcs/sources_1/bd/predeal_bd/ipshared/2d3f/hdl/convert_type.v" \
"../../../../predeal.srcs/sources_1/bd/predeal_bd/ipshared/2d3f/hdl/xlclockdriver_rd.v" \
"../../../../predeal.srcs/sources_1/bd/predeal_bd/ipshared/2d3f/hdl/predeal_entity_declarations.v" \
"../../../../predeal.srcs/sources_1/bd/predeal_bd/ipshared/2d3f/hdl/predeal.v" \
"../../../bd/predeal_bd/ip/predeal_bd_predeal_1_0/sim/predeal_bd_predeal_1_0.v" \
"../../../bd/predeal_bd/sim/predeal_bd.v" \

vlog -work xil_defaultlib \
"glbl.v"

