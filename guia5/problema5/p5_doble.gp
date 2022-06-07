set terminal qt size 800,600 enhanced font 'Helvetica ,12' persist

set title "Guia 5 - Problema 5 - Precision Doble"

set styl data lines

set samples 200

set log x 
set log y

set key right
set grid


set xlabel "n"
set ylabel "Error relativo"


plot  'integrales_punto_medio_pr_doble.dat' u 1:3 t 'Punto Medio' w lp, 'integrales_trapecio_pr_doble.dat' u 1:3 t 'Trapecio' w lp,'integrales_simpson_pr_doble.dat' u 1:3 t 'Simpson' w lp


set terminal png enhanced size 900,675
set output "p5_doble_rectas.png"
rep
set terminal qt



exit