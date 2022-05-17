set xlabel "x"
set ylabel "y"
set key t r
set grid
set title "problema 4"

f(x) = log(x)

g(x) = 0.953*(x-1.) + 2.4*(x-1.)*(x-1.1) - 11.806*(x-1.)*(x-1.1)*(x-1.3)

plot [1:2] f(x) w l lt 4 t "funcion", g(x) w l lt 8  t "polinomio de newton"

set terminal post color
set out "grafico_problema4b.pdf"
rep
set terminal qt
