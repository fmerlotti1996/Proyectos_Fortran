set styl data lines

set xlabel "t"
set ylabel "v(t)"

set xzeroaxis
set key bottom

set terminal qt size 1050,750 enhanced font 'Helvetica,12' persist

set title "Funciones de movimiento para derivada 3p"


set key bottom left

plot 'datos_P04_df3p.dat' u 1:2 w l t "Velocidad - 3p", \
     'datos_P04_df5p.dat' u 1:2 w l t "Velocidad - 5p", \
     'pos.dat' u 1:2 w l t "Posicion"

set terminal pdf enhanced font 'Helvetica,8'
set output "grafP04_3p.pdf"

replot



set terminal qt size 1050,750 enhanced font 'Helvetica,12' persist
set title "Funciones de movimiento para derivada 5p"



set key bottom left

plot 'datos_P04_df5p.dat' u 1:2 w l t "Velocidad", \
     'pos.dat' u 1:2 w l t "Posicion", \

set terminal pdf enhanced font 'Helvetica,8'
set output "grafP04_5p.pdf"

replot

exit