file = "/export/scratch/vbotka-thesis/Plot/Figures/fig-7-3.csv"
#
set terminal epslatex color 10 size 5.5in,3.9in
set output "/export/scratch/vbotka-thesis/Plot/Figures/fig-7-3-en.tex"
#
set datafile separator ";"
set xrange [0:0.8]
set yrange [1e21:5e23]
set logscale y 10
set title "Dopant profile"
set xlabel "Depth $[\\mu{m}]$"
set ylabel "Concentration $[{m}^{-3}]$"
plot file with dots notitle
