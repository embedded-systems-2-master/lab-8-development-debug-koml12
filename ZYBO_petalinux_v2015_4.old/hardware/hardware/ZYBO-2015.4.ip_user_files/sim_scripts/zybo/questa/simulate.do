onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -pli "/opt/pkg/Xilinx/Vivado/2015.4/lib/lnx64.o/libxil_vsim.so" -lib xil_defaultlib zybo_opt

do {wave.do}

view wave
view structure
view signals

do {zybo.udo}

run -all

quit -force
