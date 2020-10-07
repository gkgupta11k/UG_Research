set terminal postscript eps enhanced color "Helvetica" 30
set output "runtime/plots/drift10_rt.eps"

set xrange [100:800]
set xtics 100,100
#set log y

set key above width -2 vertical maxrows 3
set tmargin 4.0

set xlabel "number of missing values"
set ylabel "running time (microseconds)" offset 1.5 

plot\
	'runtime/values/cdrec_k3_runtime.txt' index 0 using 1:2 title 'cdrec\_k3' with linespoints lt 8 lw 3 pt 7 lc rgbcolor "cyan" pointsize 1.2, \
	'runtime/values/cdrec_k2_runtime.txt' index 0 using 1:2 title 'cdrec\_k2' with linespoints lt 8 lw 3 pt 7 lc rgbcolor "blue" pointsize 1.2, \
	'runtime/values/spirit_runtime.txt' index 0 using 1:2 title 'spirit' with linespoints lt 8 dt 6 lw 3 pt 6 lc rgbcolor "dark-green" pointsize 2, \


set output "runtime/plots/drift10_rt_log.eps"
set log y

plot\
	'runtime/values/cdrec_k3_runtime.txt' index 0 using 1:2 title 'cdrec\_k3' with linespoints lt 8 lw 3 pt 7 lc rgbcolor "cyan" pointsize 1.2, \
	'runtime/values/cdrec_k2_runtime.txt' index 0 using 1:2 title 'cdrec\_k2' with linespoints lt 8 lw 3 pt 7 lc rgbcolor "blue" pointsize 1.2, \
	'runtime/values/spirit_runtime.txt' index 0 using 1:2 title 'spirit' with linespoints lt 8 dt 6 lw 3 pt 6 lc rgbcolor "dark-green" pointsize 2, \


