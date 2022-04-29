 # ejecutar con:
 # gnuplot prob10.gp


#############################################

   
 set terminal wxt size 800,600 enhanced font 'Helvetica,12' persist

 set title "x(t) e y(t)"

 set xzeroaxis
 set yzeroaxis
 # Notar en ocasiones no aparecen los ejes .

 set xlabel "t"
 set ylabel "x,y"

 set yrange [-0.01:]

 plot "datos/p10.dat" u 2:3 t "x(t)" w l , \
 "datos/p10.dat" u 2:4 t "y(t)" w l

 set terminal pngcairo enhanced size 900,675
 set output "grafs/p10-xy.png"

 replot


############################################

 unset yrange
 
 set terminal wxt 2 size 800,600 enhanced font 'Helvetica,12' persist

 set title "v_y(t)"

 set xzeroaxis
 set yzeroaxis

 set xlabel "t"
 set ylabel "v_y"

 plot "datos/p10.dat" u 2:6 t " v_y (t)" w l

 set terminal pngcairo enhanced size 900,675
 set output "grafs/p10-v_y.png"

 replot


#############################################

 set terminal wxt 3 size 800,600 enhanced font 'Helvetica,12' persist

 set title "Trayectoria"

 set xzeroaxis
 set yzeroaxis

 set xlabel "x"
 set ylabel "y"

 set xrange [-.02:0.12] 

 plot "datos/p10.dat" u 3:4 t "y(x)" w l
 
 set terminal pngcairo enhanced size 900,675
 set output "grafs/p10-trayectoria.png"

 replot


##############################################

  exit
