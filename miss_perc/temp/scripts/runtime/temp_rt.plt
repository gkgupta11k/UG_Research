set terminal postscript eps enhanced color "Helvetica" 30
set output "runtime/plots/temp_rt.eps"

set xrange [500:4000]
set xtics 500,500
#set log y

set key above width -2 vertical maxrows 3
set tmargin 4.0

set xlabel "number of missing values"
set ylabel "running time (microseconds)" offset 1.5 

plot\
	'runtime/values/spirit_runtime.txt' index 0 using 1:2 title 'spirit' with linespoints lt 8 dt 6 lw 3 pt 6 lc rgbcolor "dark-green" pointsize 2, \
	'runtime/values/stmvl_runtime.txt' index 0 using 1:2 title 'stmvl' with linespoints lt 8 dt 2 lw 3 pt 8 lc rgbcolor "green" pointsize 1.2, \


set output "runtime/plots/temp_rt_log.eps"
set log y

plot\
	'runtime/values/spirit_runtime.txt' index 0 using 1:2 title 'spirit' with linespoints lt 8 dt 6 lw 3 pt 6 lc rgbcolor "dark-green" pointsize 2, \
	'runtime/values/stmvl_runtime.txt' index 0 using 1:2 title 'stmvl' with linespoints lt 8 dt 2 lw 3 pt 8 lc rgbcolor "green" pointsize 1.2, \


