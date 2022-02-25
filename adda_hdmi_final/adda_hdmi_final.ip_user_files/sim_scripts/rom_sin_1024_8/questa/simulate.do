onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib rom_sin_1024_8_opt

do {wave.do}

view wave
view structure
view signals

do {rom_sin_1024_8.udo}

run -all

quit -force
