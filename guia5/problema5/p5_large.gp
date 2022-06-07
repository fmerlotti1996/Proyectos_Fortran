set terminal qt size 800,600 enhanced font 'Helvetica ,12' persist

set title "Guia 5 - Problema 5"

set styl data lines

set samples 200

set log x 
set log y

set key right
set grid


set xlabel "n"
set ylabel "Error relativo"

f(x) = 2*x**-2 
g(x) = 1*x**-4 

plot  'integrales_punto_medio_pr_doble.dat' u 1:3 t 'Punto Medio Doble' w lp, 'integrales_trapecio_pr_doble.dat' u 1:3 t 'Trapecio Doble' w lp,'integrales_simpson_pr_doble.dat' u 1:3 t 'Simpson Doble' w lp,\
      'integrales_punto_medio_pr_large.dat' u 1:3 t 'Punto Medio Large' w lp, 'integrales_trapecio_pr_large.dat' u 1:3 t 'Trapecio Large' w lp,'integrales_simpson_pr_large.dat' u 1:3 t 'Simpson Large' w lp,\
      f(x) w l t 'f(x)', g(x) w l t 'g(x)'


set terminal png enhanced size 900,675
set output "p5_completo.png"
rep
set terminal qt



exit