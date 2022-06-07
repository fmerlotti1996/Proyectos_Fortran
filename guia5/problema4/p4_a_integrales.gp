set terminal qt size 800,600 enhanced font 'Helvetica ,12' persist

set title "Guia 4 - Problema 4 - Funcion a"

set styl data lines

set samples 200

#set xrange [-1:1]
#set yrange [-1.5:1.5]

set key right
set grid


set xlabel "n"
set ylabel "Integrales"


plot  'integrales_punto_medio_fa.dat' u 1:2 t 'Punto Medio' w p pt 7 ps 1,\
      'integrales_trapecio_fa.dat' u 1:2 t 'Trapecio' w p pt 8 ps 1,\
      'integrales_simpson_fa.dat' u 1:2 t 'Simpson' w p pt 9 ps 1 
      


set terminal png enhanced size 900,675
set output "p4_fa.png"
rep
set terminal qt



exit