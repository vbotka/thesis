file = "/export/scratch/vbotka-thesis/Plot/Figures/fig-7-6.csv"
set output "/export/scratch/vbotka-thesis/Plot/Figures/fig-7-6-en.tex"
# set output '/export/scratch/vbotka-thesis/Plot/Figures/fig-7-6-en.pdf'
set terminal epslatex color 10 size 5.5in,3.9in
# set terminal pdf
set datafile separator ";"
set key autotitle columnhead
#
set xrange [92:105]
set yrange [-1.7:-1.1]
# set xtics 0.0,0.2e-6,0.8e-6
# set ytics 0.0,0.2e-6,0.8e-6
# set logscale x 10
# set logscale y 10
set title "Flatband voltage / Oxide thickness"
set xlabel "Oxide thickness $[\\nu{m}]$"
set ylabel "Flatband Voltage $[V]$"
plot file with points notitle
# f(x) = a*x + b*x
# fit f(x) file via a, b
# plot f(x) dt 11
