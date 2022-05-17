set terminal qt size 800,600 enhanced font 'Helvetica ,12' persist

set title "Guia 3 - Problema 6 - n=40 Chebyshev"

set styl data lines

set samples 200

set xrange [-1:1]
set yrange [-1.5:1.5]

set key right
set grid

set xlabel "x"
set ylabel "f(x)"

 f(x)=1./(1. + 25.*x**2)

plot 'lagrange.dat' u 1:2 t 'Valores de P(x)' w p pt 7 ps 1 , 'funcion_pares.dat' u 1:2 t 'Puntos de interpolación' w p pt 7 ps 2 , f(x) t 'f(x)' w l lw 2 lt 6

set terminal png enhanced size 900,675
set output "p6_40_Chebyshev.png"
replot
set terminal qt

exit