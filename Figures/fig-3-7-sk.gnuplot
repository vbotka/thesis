file = "/export/scratch/vbotka-thesis/Plot/Figures/fig-3-7.csv"
#
set terminal epslatex color 10 size 5.5in,3.9in
set output "/export/scratch/vbotka-thesis/Plot/Figures/fig-3-7-sk.tex"
#
set datafile separator ";"
set xrange [0:1.1]
set yrange [5e20:5e22]
set logscale y 10
set title "Kocentrácia dopantov"
set xlabel "Hĺbka $[\\mu{m}]$"
set ylabel "Koncentrácia $[{m}^{-3}]$"
plot file with lines notitle
