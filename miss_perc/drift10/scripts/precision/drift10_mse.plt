set terminal postscript eps enhanced color "Helvetica" 30
set output "error/plots/drift10_mse.eps"

set xrange [100-1:800+1]
set xtics 100,100
set yrange [0:1]
#set log y

set key above width -2 vertical maxrows 3
set tmargin 4.0

set xlabel "number of missing values"
set ylabel "mean squared error" offset 1.5 

plot\
	'error/mse/MSE_cdrec_k3.dat' index 0 using 1:2 title 'cdrec\_k3' with linespoints lt 8 lw 3 pt 7 lc rgbcolor "cyan" pointsize 1.2, \
	'error/mse/MSE_cdrec_k2.dat' index 0 using 1:2 title 'cdrec\_k2' with linespoints lt 8 lw 3 pt 7 lc rgbcolor "blue" pointsize 1.2, \
	'error/mse/MSE_spirit.dat' index 0 using 1:2 title 'spirit' with linespoints lt 8 dt 6 lw 3 pt 6 lc rgbcolor "dark-green" pointsize 2, \


set output "error/plots/drift10_rmse.eps"
set ylabel "root mean squared error" offset 1.5 

plot\
	'error/rmse/RMSE_cdrec_k3.dat' index 0 using 1:2 title 'cdrec\_k3' with linespoints lt 8 lw 3 pt 7 lc rgbcolor "cyan" pointsize 1.2, \
	'error/rmse/RMSE_cdrec_k2.dat' index 0 using 1:2 title 'cdrec\_k2' with linespoints lt 8 lw 3 pt 7 lc rgbcolor "blue" pointsize 1.2, \
	'error/rmse/RMSE_spirit.dat' index 0 using 1:2 title 'spirit' with linespoints lt 8 dt 6 lw 3 pt 6 lc rgbcolor "dark-green" pointsize 2, \

set output "error/plots/drift10_mae.eps"
set ylabel "mean absolute error" offset 1.5 

plot\
	'error/mae/MAE_cdrec_k3.dat' index 0 using 1:2 title 'cdrec\_k3' with linespoints lt 8 lw 3 pt 7 lc rgbcolor "cyan" pointsize 1.2, \
	'error/mae/MAE_cdrec_k2.dat' index 0 using 1:2 title 'cdrec\_k2' with linespoints lt 8 lw 3 pt 7 lc rgbcolor "blue" pointsize 1.2, \
	'error/mae/MAE_spirit.dat' index 0 using 1:2 title 'spirit' with linespoints lt 8 dt 6 lw 3 pt 6 lc rgbcolor "dark-green" pointsize 2, \
