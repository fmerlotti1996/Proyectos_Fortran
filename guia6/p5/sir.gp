set terminal qt size 800,600 enhanced font 'Helvetica ,12' persist

set title "Guia 6 - Problema 5 "

set styl data lines

set samples 200



set key right
set grid


set xlabel "t"
set ylabel "Poblaciones"






plot  'sir.dat' u 1:2 t 'S' w p pt 7 ps 1 , 'sir.dat' u 1:3 t 'I' w p pt 8 ps 1 , 'sir.dat' u 1:4 t 'R' w p pt 9 ps 1


set terminal png enhanced size 900,675
set output "p5_sir.png"
rep
set terminal qt



exit