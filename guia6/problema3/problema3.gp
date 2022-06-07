set xlabel "x"
set ylabel "y"
set styl data lines
set terminal qt size 1050,750 enhanced font 'Helvetica,12' persist
set title "grafica para y01 RK 4"
set key b r

plot "rk4_prob3_y01.dat" u 1:2 w lp pt 1 t "grafico rk4 para y01=0.5","rk4_prob3_y02.dat" u 1:2 w lp pt 2 t "grafico rk4 para y02=2",\
"rk4_prob3_y03.dat" u 1:2 w lp pt 3 t "grafico rk4 para y03=pi","rk4_prob3_y04.dat" u 1:2 w lp pt 4 t "grafico rk4 para y01=3.6",\
"rk4_prob3_y05.dat" u 1:2 w lp pt 5 t "grafico rk4 para y01=5.5","rk4_prob3_y06.dat" u 1:2 w lp pt 6 t "grafico rk4 para y01=2pi"

set terminal qt
rep
set output "datos_rk4_problema3.pdf"

