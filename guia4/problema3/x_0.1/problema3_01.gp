set styl data lines

set xlabel "h"
set ylabel "Errores Relativos"

set xzeroaxis
set key bottom

set terminal qt size 1050,750 enhanced font 'Helvetica,12' persist

set title "Error relativo en la derivada primera de cos(x) en x=0.1"

set logscale 
set key bottom left
set autoscale

plot 'datos_P3_cos_fw.dat' u 1:4 w l t "Error|fw en 0.1",\
                   'datos_P3_cos_3p.dat' u 1:4 w l t "Error|3p en 0.1",\
                   'datos_P3_cos_5p.dat' u 1:4 w l t "Error|5p en 0.1"

set terminal post color
set output "Problema3_cos_0_1.pdf"
rep
set term qt

set title "Error relativo de la derivada primera de exp(x) en x=0.1"
plot 'datos_P3_exp_fw.dat' u 1:4 w l t "Error|fw en 0.1",\
                   'datos_P3_exp_3p.dat' u 1:4 w l t "Error|3p en 0.1",\
                   'datos_P3_exp_5p.dat' u 1:4 w l t "Error|5p en 0.1"

set terminal post color
set output "Problema3_exp_0_1.pdf"
rep
set term qt
     
#Ambos grafico se observa como decrece el error hasta un minimo absoluto, 
#del minimo absoluto a la derecha se observa el error asociado al algoritmo, 
#mientras que para la izquierda el error crece nuevamente debido al error de la máquina.
# Se puede calculos los valores óptimos de h, de tal forma de poder comparar con el gráfico 
#y ver que este mínimo absoluto se corresponde, aproximadamente, con ese valor de h_o.
