-makelib xcelium_lib/xil_defaultlib -sv \
  "C:/Data_Disk/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Data_Disk/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_2 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../hdmi_photo.srcs/sources_1/ip/rom_image/sim/rom_image.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

