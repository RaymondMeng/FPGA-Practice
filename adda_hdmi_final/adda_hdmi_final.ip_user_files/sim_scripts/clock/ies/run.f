-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../adda_hdmi_final.srcs/sources_1/ip/clock/clock_clk_wiz.v" \
  "../../../../adda_hdmi_final.srcs/sources_1/ip/clock/clock.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

