onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib rom_square_1024_8_opt

do {wave.do}

view wave
view structure
view signals

do {rom_square_1024_8.udo}

run -all

quit -force
