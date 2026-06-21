transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_FA_0_0/sim/design_1_FA_0_0.vhd" \
"../../../bd/design_1/ip/design_1_FA_0_1/sim/design_1_FA_0_1.vhd" \
"../../../bd/design_1/ip/design_1_FA_0_2/sim/design_1_FA_0_2.vhd" \
"../../../bd/design_1/ip/design_1_FA_0_3/sim/design_1_FA_0_3.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \


