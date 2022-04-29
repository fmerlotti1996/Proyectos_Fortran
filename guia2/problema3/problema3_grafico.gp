#Grafico del problema 3

set ylabel "Error estimado"
set xlabel "Numero de iteraciones"
set log x
set log y
set autoscale
set title "P03-G03: comparacion de errores estimados"
set grid

plot [0.9:15] "problema3_bisec.dat" u 1:5 w p pt 9 t "Error biseccion",  "problema3_newtonrap.dat" u 1:4 w p pt 7 t "Error N-R"


set terminal postscript color
set output "grafico_problema3.pdf"
rep
set terminal qt

