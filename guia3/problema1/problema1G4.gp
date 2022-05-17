#Problema 1 guia 4

set xlabel "x"
set ylabel "y"
set key t b l
set grid
set title "problema1"

f(x) = log(1)*(x-0.6)/0.6 +log(1.6)*x/0.6

g(x) = -log(1.6)*(x*(x-0.9))/(0.18) + log(1.9)*x*(x-0.6)/(0.27)

t(x) = log(1.45) + (1/1.45)*(x- 0.45) - 1/(1.45)**2*2*(x-0.45)**2

plot [0:20] f(x) w l t "polinomiogrado1", log(x+1) w l t "log(x+1)",g(x) w l lt 4 t "polinomiogrado2", t(x) w l lt 6 t "taylorgrado2"

set term post color 
set out "problema1a.pdf"
rep
set term qt
