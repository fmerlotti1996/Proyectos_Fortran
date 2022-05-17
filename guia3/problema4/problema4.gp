set xlabel "x"
set ylabel "y"
set key t r
set grid
set title "problema 4"

f(x) = exp(2*x)*cos(3*x)

g(x) = 1 + 0.442*x - 11.217*x*(x-0.3)

plot [0:0.7] f(x) w l lt 4 t "funcion", g(x) w l lt 8  t "polinomio de newton"

set terminal post color
set out "grafico_problema4.pdf"
rep
set terminal qt
