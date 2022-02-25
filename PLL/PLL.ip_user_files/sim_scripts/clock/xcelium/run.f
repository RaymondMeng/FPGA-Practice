-makelib xcelium_lib/xil_defaultlib -sv \
  "C:/Data_Disk/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Data_Disk/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../PLL.srcs/sources_1/ip/clock/clock_clk_wiz.v" \
  "../../../../PLL.srcs/sources_1/ip/clock/clock.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

