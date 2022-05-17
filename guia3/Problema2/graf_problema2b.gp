#problema 2b (Guia4)

set term post color 
set xlabel "x"
set ylabel "f(x)"
set key b l
set grid
set title "problema2"


plot 'Ejercicio2_puntos.dat' u 1:2 w lp  lt 7 t "pares ordenados de puntos seleccionados"

set out "pares_ordenados_b.pdf"

rep

set term qt
