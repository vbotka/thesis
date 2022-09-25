file = "/export/scratch/vbotka-thesis/Plot/Figures/fig-3-6.csv"
#
set terminal epslatex color 10 size 5.5in,3.9in
set output "/export/scratch/vbotka-thesis/Plot/Figures/fig-3-6-en.tex"
#
set datafile separator ";"
set xrange [0:1.1]
set yrange [0.2:1.4]
set title "Generation time of minority carriers"
set xlabel "Depth $[\\mu{m}]$"
set ylabel "${\\tau}_{g}$ $[ms]$"
plot file with points notitle
