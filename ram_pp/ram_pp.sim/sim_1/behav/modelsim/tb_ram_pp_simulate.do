######################################################################
#
# File name : tb_ram_pp_simulate.do
# Created on: Sun Jan 23 19:15:25 +0800 2022
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
vsim -voptargs="+acc" -L blk_mem_gen_v8_4_2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm -lib xil_defaultlib xil_defaultlib.tb_ram_pp xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {tb_ram_pp_wave.do}

view wave
view structure
view signals

do {tb_ram_pp.udo}

run 1000ns
