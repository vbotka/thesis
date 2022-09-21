file = "/export/scratch/vbotka-thesis/Plot/Figures/fig-3-7.csv"
set output "/export/scratch/vbotka-thesis/Plot/Figures/fig-3-7-sk.tex"
# set output '/export/scratch/vbotka-thesis/Plot/Figures/fig-3-7-sk.pdf'
set terminal epslatex color 10 size 5.5in,3.9in
# set terminal pdf
set datafile separator ";"
# set key autotitle columnhead
set xrange [0:1.1]
set yrange [5e20:5e22]
# set xtics 0.0,0.2e-6,0.8e-6
# set ytics 0.0,0.2e-6,0.8e-6
# set logscale x 10
set logscale y 10
set title "Kocentrácia dopantov"
set xlabel "Hĺbka $[\\mu{m}]$"
set ylabel "Koncentrácia $[{m}^{-3}]$"
plot file with lines notitle
# f(x) = a*x + b*x
# fit f(x) file via a, b
# plot f(x) dt 11
