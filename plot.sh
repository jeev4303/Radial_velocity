#!/bin/bash

for i in 00 30 60 90
do
gnuplot -p << EOF
reset
set terminal png size 1024,768 enhanced font "Bold-Times-Roman, 23" fontscale 1.0
set output "omega$i.png"
set ylabel 'Radial velocity (km/sec)'
set xlabel '{/Symbol Q} (degree)'
plot "omega$i.dat" u (column(1)):(column(2))  w l lt 3 lw 3 lc rgb 'red' title "{/Symbol W} = $i^0"

EOF

done
