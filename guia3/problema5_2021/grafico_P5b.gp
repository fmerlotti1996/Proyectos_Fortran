#Grafico del problema 5 - Guia 3

set ylabel "funcs"
set xlabel "x"
set autoscale
set grid
set key r t

g(x)=log(x)

set title "P05(b)-G04"
set key r b
plot [0.9:1.41] "newtonP5_b.dat" u 1:2 w p pt 8 ps 0.5 t "Polinomio", "funcion_pares_b.dat" u 1:2 w p pt 6 t "Pares (x_i;f(x_i))" , g(x) w l lt 6 t "Funcion"

set terminal post color
set output "grafico_P5b.pdf"
rep
set terminal qt
