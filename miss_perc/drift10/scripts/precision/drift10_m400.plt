set terminal png size 12*400,720
set output "recovery/plots/drift10_m400.png"

set xrange [50:50+400]
set xtics 0,25
#set log y

set key above width -1 vertical maxrows 2 
set tmargin 2.5

set arrow from 0,0 to 1000,0 nohead

set xlabel "data point"
set ylabel "value" offset 1.5 

plot\
	'recovery/values/reference.txt' index 0 using 1:2 title 'real' with linespoints lt 1 dt 3 lw 3 pt 5 lc rgbcolor "black" pointsize 1, \
	'recovery/values/400/cdrec400_k3.txt' index 0 using 1:2 title 'cdrec\_k3' with linespoints lt 8 lw 3 pt 7 lc rgbcolor "cyan" pointsize 1.2, \
	'recovery/values/400/spirit400.txt' index 0 using 1:2 title 'spirit' with linespoints lt 8 dt 6 lw 3 pt 6 lc rgbcolor "dark-green" pointsize 2, \

