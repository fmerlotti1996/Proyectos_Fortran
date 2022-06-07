set terminal qt size 800,600 enhanced font 'Helvetica ,12' persist

set title "Guia 6 - Problema 4 - Inciso e "

set styl data lines

set samples 200



set key right
set grid


set xlabel "t"
set ylabel "Tita"




#'euler_exit_0.1.dat' u 1:2 t 'Euler' w p pt 8 ps 1

plot  'rk4_sys_exit_4e_tita1.dat' u 1:2 t 'Tita=1' w p pt 7 ps 1, 'rk4_sys_exit_4e_tita2.dat' u 1:2 t 'Tita=0.01' w p pt 8 ps 1, 'rk4_sys_exit_b.dat' u 1:2 t 'Tita=0.25' w p pt 9 ps 1,\
'rk4_sys_exit_4e_tita1.dat' u 1:5 t 'Error Tita=1' w p pt 10 ps 1,'rk4_sys_exit_4e_tita2.dat' u 1:5 t 'Error Tita=0.01' w p pt 11 ps 1


set terminal png enhanced size 900,675
set output "p4_inciso_e.png"
rep
set terminal qt



exit