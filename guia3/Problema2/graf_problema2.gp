#problema 2a (Guia4)

set xlabel "x"
set ylabel "f(x)"
set key l
set grid
set title "problema2"

f(x)=sqrt(x+1.)

plot [0:6] 'Ejercicio2.dat' u 2:3 w lp  lt 4 t 'P(x) de log(x+1)',f(x) w l t "funcion sqrt(x+1)", 'Ejercicio2_puntos.dat' u 1:2 w p pt 5 t "pares ordenados de puntos seleccionados"


set term post color 
set out "polinomio_interpolante.pdf"
rep
set term qt

