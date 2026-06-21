transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vcom -work xil_defaultlib -93  -incr \
"../../../bd/J_Cou/ip/J_Cou_dff_0_0/sim/J_Cou_dff_0_0.vhd" \
"../../../bd/J_Cou/ip/J_Cou_dff_0_1/sim/J_Cou_dff_0_1.vhd" \
"../../../bd/J_Cou/ip/J_Cou_dff_0_2/sim/J_Cou_dff_0_2.vhd" \
"../../../bd/J_Cou/ip/J_Cou_dff_0_3/sim/J_Cou_dff_0_3.vhd" \
"../../../bd/J_Cou/sim/J_Cou.vhd" \


