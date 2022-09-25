file = "/export/scratch/vbotka-thesis/Plot/Figures/fig-3-5.csv"
#
set terminal epslatex color 10 size 5.5in,3.9in
set output "/export/scratch/vbotka-thesis/Plot/Figures/fig-3-5-sk.tex"
#
set datafile separator ";"
set xrange [0:1.1]
set yrange [0.01:0.024]
set title "Metóda konštantnej šírky OPN."
set xlabel "Hĺbka $[\\mu{m}]$"
set ylabel "${dV_g}/{dt} \\quad  [{Vs}^{-1}]$"
plot file with points notitle
