-makelib xcelium_lib/xil_defaultlib -sv \
  "C:/Data_Disk/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Data_Disk/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Data_Disk/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../adda_test.srcs/sources_1/ip/ila_da/sim/ila_da.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

