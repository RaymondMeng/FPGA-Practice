onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib dpram_8_1024_opt

do {wave.do}

view wave
view structure
view signals

do {dpram_8_1024.udo}

run -all

quit -force
