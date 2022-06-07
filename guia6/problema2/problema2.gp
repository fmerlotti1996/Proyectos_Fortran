set xlabel "x"
set ylabel "y"
set styl data lines
set terminal qt size 1280,720 enhanced font 'Helvetica,12' 
set title "grafica del error para edos con h2=5e-3"
set xzeroaxis
set logscale y
#set samples 201

plot "euler_exit_h2.dat" u 1:4 w lp pt 3 t "grafico de error euler",\
     "rk2_exit_h2.dat" u 1:4 w lp pt 4 t "grafico error de rk2",\
     "rk4_exit_h2.dat" u 1:4 w lp pt 5 ps 0.5 t "grafico error rk4" 

#set terminal qt
set terminal pngcairo enhanced size 1280,720
set output "datos_edos_h2.png"
rep
#-------------------------------------------------------------------------------------
set terminal qt size 1050,750 enhanced font 'Helvetica,12'
set autoscale
set logscale y
set title "grafica del error para edos con h1=1e-2"
plot "euler_exit_h1.dat" u 1:4 w lp pt 3 t "grafico de error euler",\
     "rk2_exit_h1.dat" u 1:4 w lp pt 4 t "grafico error de rk2",\
     "rk4_exit_h1.dat" u 1:4 w lp pt 5 ps 0.5 t "grafico error rk4" 

#set terminal qt
set terminal pngcairo enhanced size 1050,750
set output "datos_edos_h1.png"
rep


#---------------------------------------------------------------------------------------

set terminal qt size 1050,750 enhanced font 'Helvetica,12'

set logscale y
set samples 200
set title "grafica del error para edos con h=1e-1"
plot "euler_exit_h.dat" u 1:4 w lp pt 3 t "grafico de error euler",\
     "rk2_exit_h.dat" u 1:4 w lp pt 4 t "grafico error de rk2",\
     "rk4_exit_h.dat" u 1:4 w lp pt 5 ps 0.5 t "grafico error rk4" 

#set terminal qt
set terminal pngcairo enhanced size 1050,750
set output "datos_edos_h.png"
rep

#---------------------------------------------------------------------------------------

set terminal qt size 1050,750 enhanced font 'Helvetica,12' 

set title "grafica de la funcion exacta h=1e-1"
plot "euler_exit_h.dat" u 1:3 w lp pt 4 t  "funcion exacta"
     
#set terminal qt
set terminal pngcairo enhanced size 1050,750
set output "grafico_funcionexacta.png"
rep