onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+fifo_wr256_8_rd256_8 -L xil_defaultlib -L xpm -L fifo_generator_v13_2_3 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.fifo_wr256_8_rd256_8 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {fifo_wr256_8_rd256_8.udo}

run -all

endsim

quit -force
