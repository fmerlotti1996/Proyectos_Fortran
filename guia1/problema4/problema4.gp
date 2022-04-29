#Grafico del probolema 4

set xlabel "eje x"
set ylabel "eje y"

set title "Funciones lineales"

set xrange [0:5]

set grid
set samples 50
set key  t  

g(x) = 0.5*x + 1

h(x) = 0.4*x + 1.2

plot  g(x) w p pt 5, h(x) w p pt 6 , "datos.dat" u 2:1 w p pt 8, "datos.dat" u 3:1 w p pt 7

set term post color 
set output "grafico_problema4_color.ps"
rep
 set terminal qt

set terminal post
set output "grafico_problema4_byn.ps"
rep
set terminal qt
 
set terminal post color 
set output "grafico_problema4.pdf"
rep
set terminal qt
 
set terminal png 
set output "grafico_problema4.png"
rep
set terminal qt
