#problema 1 (Guia4)

set xlabel "x"
set ylabel "f(x)"
set key l
set grid
set title "problema1" 
set log
set autoscale

plot 'datos_P1.dat' u 1:4 w lp  lt 4 t 'derivada 3 puntos centrada',exp(2.)+2.*exp(2.) w l t "funcion f(x)"

set term post color 
set out "derivada_problema1.pdf"
rep
set term qt

