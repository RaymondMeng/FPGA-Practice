onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+dpram_8_1024 -L xil_defaultlib -L xpm -L blk_mem_gen_v8_4_2 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.dpram_8_1024 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {dpram_8_1024.udo}

run -all

endsim

quit -force
