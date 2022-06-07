set terminal qt size 800,600 enhanced font 'Helvetica ,12' persist

set title "Guia 6 - Problema 4 - Inciso d "

set styl data lines

set samples 200



set key right
set grid


set xlabel "n"
set ylabel "Energia"




#'euler_exit_0.1.dat' u 1:2 t 'Euler' w p pt 8 ps 1

plot  'rk4_sys_exit_a.dat' u 1:4 t 'Energia CI inciso a' w p pt 7 ps 1, 'rk4_sys_exit_b.dat' u 1:4 t 'Energia CI inciso b' w p pt 8 ps 1


set terminal png enhanced size 900,675
set output "p4_inciso_d.png"
rep
set terminal qt



exit