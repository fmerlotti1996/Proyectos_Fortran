#problema1b guia 4
set xlabel "x"
set ylabel "y"
set key t l
set grid
set title "problema 1"

f(x)= -(x-0.6)/0.6 + sqrt(1.6)*x/0.6

g(x)= ((x-0.6)*(x-0.9))/(0.54) + sqrt(1.6)*(x*(x-0.9))/(-0.18) + sqrt(1.9)*(x*(x-0.6))/(0.27)

h(x) = sqrt(1.45) + (0.5)*(1.45)**(-1/2)*(x-0.45) + ((-0.25)*(1.45)**(-1.5)*(x-0.45)**2)/2. 

plot [0:10] f(x) w l lt 4 t "polinomio grado 1",g(x) w l lt 8 t "polinomio grado 2", sqrt(x+1) w l lt 6 t "sqrt(x+1)",h(x) w l lt 7 t "taylorgrado2"

set term post color 
set out "problema1b.pdf"
rep
set term qt
