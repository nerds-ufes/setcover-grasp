set term postscript eps enhanced color font 'Times New Roman,20'
#set term jpeg

set output "Grafico_Observadores_artificial.eps"
#set output "Grafico_Observadores.jpeg"

set grid
#set log

set key left

set yrange [0:300]
#set xrange [150:]

set xlabel "Tamanho da rede."
set ylabel "Observadores."

plot 'SMV.txt' using 1:2 title 'SMV' with linespoints lt 16 lw 3 dt 3, \
     'SMV-A.txt' using 1:2 title 'SMV-A' with linespoints lt 8 lw 3 dt 2 pt 2, \
     'BL.txt' using 1:2 title 'BL' with linespoints lt 32 lw 3 dt 1 pt 6, \
     'GRASP.txt' using 1:2 title 'GSMV' with linespoints lt 24 lw 3 dt 4

