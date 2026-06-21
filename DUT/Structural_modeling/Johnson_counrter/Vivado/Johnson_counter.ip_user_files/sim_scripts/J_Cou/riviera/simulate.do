transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+J_Cou  -L xil_defaultlib -L secureip -O5 xil_defaultlib.J_Cou

do {J_Cou.udo}

run 1000ns

endsim

quit -force
