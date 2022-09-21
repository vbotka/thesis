file = "/export/scratch/vbotka-thesis/Plot/Figures/fig-3-5.csv"
set output "/export/scratch/vbotka-thesis/Plot/Figures/fig-3-5-en.tex"
# set output '/export/scratch/vbotka-thesis/Plot/Figures/fig-3-5-en.pdf'
set terminal epslatex color 10 size 5.5in,3.9in
# set terminal pdf
set datafile separator ";"
# set key autotitle columnhead
set xrange [0:1.1]
set yrange [0.01:0.024]
# set xtics 0.0,0.2e-6,0.8e-6
# set ytics 0.0,0.2e-6,0.8e-6
# set logscale x 10
# set logscale y 10
set title "Constant width SCR method"
set xlabel "Depth $[\\mu m]$"
set ylabel "${dV_g}/{dt} \\quad  [{Vs}^{-1}]$"
plot file with points notitle
# f(x) = a*x + b*x
# fit f(x) file via a, b
# plot f(x) dt 11
