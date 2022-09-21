# file = "/export/scratch/vbotka-thesis/Plot/Figures/fig-7-3b.csv"
set output "/export/scratch/vbotka-thesis/Plot/Figures/fig-7-3b-en.tex"
# set output "/export/scratch/vbotka-thesis/Plot/Figures/fig-7-3b-en.pdf"
set terminal epslatex color 10 size 5.5in,3.9in
# set terminal pdf
set datafile separator ";"
# set key autotitle columnhead
set xrange [0:0.8]
set yrange [1e21:2e23]
# set logscale x 10
set logscale y 10
set title "Dopant profile"
set xlabel "Depth $[\\mu{m}]$"
set ylabel "Concentration $[{m}^{-3}]$"
filelist=system("ls /export/scratch/vbotka-thesis/Plot/Figures/fig-7-3b-*.csv")
plot for [filename in filelist] filename with dots notitle
# f(x) = a*x + b*x
# fit f(x) file via a, b
# plot f(x) dt 11
