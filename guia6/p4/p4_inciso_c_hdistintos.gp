set terminal qt size 800,600 enhanced font 'Helvetica ,12' persist

set title "Guia 6 - Problema 4 - Inciso d "

set styl data lines

set samples 200



set key right
set grid


set xlabel "t"
set ylabel "Energia"


plot  'rk4_sys_exit_a.dat' u 1:4 t 'h=0.1' w p pt 7 ps 1 , 'rk4_sys_exit_a_h1.dat' u 1:4 t 'h=0.01' w p pt 8 ps 1


set terminal png enhanced size 900,675
set output "p4_inciso_d_hdistintos.png"
rep
set terminal qt



exit