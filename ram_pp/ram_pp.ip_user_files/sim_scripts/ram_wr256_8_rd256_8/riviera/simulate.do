onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+ram_wr256_8_rd256_8 -L xil_defaultlib -L xpm -L blk_mem_gen_v8_4_2 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ram_wr256_8_rd256_8 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {ram_wr256_8_rd256_8.udo}

run -all

endsim

quit -force
