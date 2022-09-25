file = "/export/scratch/vbotka-thesis/Plot/Figures/fig-7-6.csv"
#
set terminal epslatex color 10 size 5.5in,3.9in
set output "/export/scratch/vbotka-thesis/Plot/Figures/fig-7-6-en.tex"
#
set datafile separator ";"
set key autotitle columnhead
#
set xrange [92:105]
set yrange [-1.7:-1.1]
set title "Flatband voltage / Oxide thickness"
set xlabel "Oxide thickness $[nm]$"
set ylabel "Flatband Voltage $[V]$"
plot file with points notitle
