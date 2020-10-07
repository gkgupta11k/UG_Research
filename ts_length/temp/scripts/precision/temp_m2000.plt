set terminal png size 12*500,720
set output "recovery/plots/temp_m2000.png"

set xrange [250:250+500]
set xtics 0,25
#set log y

set key above width -1 vertical maxrows 2 
set tmargin 2.5

set arrow from 0,0 to 5000,0 nohead

set xlabel "data point"
set ylabel "value" offset 1.5 

plot\
	'recovery/values/reference.txt' index 0 using 1:2 title 'real' with linespoints lt 1 dt 3 lw 3 pt 5 lc rgbcolor "black" pointsize 1, \
	'recovery/values/2000/spirit2000.txt' index 0 using 1:2 title 'spirit' with linespoints lt 8 dt 6 lw 3 pt 6 lc rgbcolor "dark-green" pointsize 2, \
	'recovery/values/2000/stmvl2000.txt' index 0 using 1:2 title 'stmvl' with linespoints lt 8 dt 2 lw 3 pt 8 lc rgbcolor "green" pointsize 1.2, \

