
#GRAFICO DEL PROBLEMA 3

set xlabel "eje x"
set ylabel "eje y"

set title "Grafico del problema 3"

set xrange [0:5]

set grid
set samples 20
set key  t  

f(x) = sin(2*pi*x)

plot f(x) w lp pt 7 lt 3 lw 2

set terminal pdf

set output "grafico_problema3.pdf"

rep

set terminal qt
