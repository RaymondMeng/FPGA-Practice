-makelib xcelium_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xbip_utils_v3_0_9 \
  "../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_utils_v2_0_5 \
  "../../../ipstatic/hdl/axi_utils_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/fir_compiler_v7_2_11 \
  "../../../ipstatic/hdl/fir_compiler_v7_2_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../CICC.srcs/sources_1/ip/predeal_0/predeal_fir_compiler_v7_2_i0/sim/predeal_fir_compiler_v7_2_i0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../ipstatic/work/hdl/synth_reg.v" \
  "../../../ipstatic/work/hdl/synth_reg_w_init.v" \
  "../../../ipstatic/work/hdl/convert_type.v" \
  "../../../ipstatic/work/hdl/xlclockdriver_rd.v" \
  "../../../ipstatic/work/hdl/predeal_entity_declarations.v" \
  "../../../ipstatic/work/hdl/predeal.v" \
  "../../../../CICC.srcs/sources_1/ip/predeal_0/sim/predeal_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

