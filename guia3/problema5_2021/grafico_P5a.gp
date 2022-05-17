#Grafico del problema 3 - Guia 4



set ylabel "funcs"
set xlabel "x"
set autoscale
set title "P05(a)-G04"
set grid
set key r t




f(x)=cos(3*x)*exp(2*x)


plot [0:0.61] "newtonP5_a.dat" u 1:2 w l lt 7 t "Polinomio", "funcion_pares_a.dat"  u 1:2 w p pt 6 t "Pares (x_i;f(x_i))" , f(x) w l lt 6 t "Funcion"



#g(x)=log(x)

#set title "P05(b)-G04"
#set key r b
#plot [1:1.41] "newtonP5_b.dat" u 1:2 w l lt 7 t "Polinomio", "funcion_pares_b.dat" u 1:2 w p pt 6 t "Pares (x_i;f(x_i))" , g(x) w l lt 6 t "Funcion"



set terminal post color
set output "grafico_P5a.pdf"
rep
set terminal qt
