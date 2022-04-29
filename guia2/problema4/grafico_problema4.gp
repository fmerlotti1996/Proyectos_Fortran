#Grafico para problema 4

set xlabel "t[s]"
set ylabel "h(t)[m]"
set autoscale
set title "Problema 4: Caida Libre"
set key t r
set grid

h0=10
g=9.8
m=0.1
k=0.149

h(x)=h0-(m*(g/k))*x+((g*m*m)/(k**2))*(1-exp(-(k/m)*x))

plot  [0:2.5][-1:10]"problema4_bisec.dat" u 2:3 w p pt 7,"problema4_newtonrap.dat" u 2:3 w p pt 2, h(x) t "h(t)" w l ls 3 lw 3

set terminal post color
set out "caidalibre_problema4.pdf"
rep
set terminal qt 
