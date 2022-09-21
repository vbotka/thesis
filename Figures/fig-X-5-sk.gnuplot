file = "/export/scratch/vbotka-thesis/Plot/Figures/fig-X-5.csv"
# set output "/export/scratch/vbotka-thesis/Plot/Figures/fig-X-5-sk.tex"
set output '/export/scratch/vbotka-thesis/Plot/Figures/fig-X-5-sk.pdf'
# set terminal epslatex color 10 size 5.5in,3.9in
set terminal pdf
set datafile separator ";"
# set key autotitle columnhead
set xrange [0:0.8]
set yrange [1e21:5e23]
# set xtics 0.0,0.2e-6,0.8e-6
# set ytics 0.0,0.2e-6,0.8e-6
# set logscale x 10
set logscale y 10
set title "Kocentrácií dopantov"
set xlabel "Hĺbka $[\\mu{m}]$"
set ylabel "Koncentrácia $[{m}^{-3}]$"
plot file with dots notitle
# f(x) = a*x + b*x
# fit f(x) file via a, b
# plot f(x) dt 11
