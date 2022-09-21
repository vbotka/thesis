file_dd = "/export/scratch/vbotka-thesis/Plot/Figures/fig-3-2-ddqc-04.csv"
file_hf = "/export/scratch/vbotka-thesis/Plot/Figures/fig-3-2-hfqc-04.csv"
set output "/export/scratch/vbotka-thesis/Plot/Figures/fig-3-2-sk.tex"
# set output '/export/scratch/vbotka-thesis/Plot/Figures/fig-3-2-sk.pdf'
set terminal epslatex color 10 size 5.5in,3.9in
# set terminal pdf
set datafile separator ";"
# set key autotitle columnhead
set xrange [-2:10]
set yrange [0:1.2]
# set xtics 0.0,0.2e-6,0.8e-6
# set ytics 0.0,0.2e-6,0.8e-6
# set logscale x 10
# set logscale y 10
set title "QC metóda"
set xlabel "Napätie hradla ${V}_g$"
set ylabel "${C}/{C}_{ox}$ \\qquad $(1-{\\varphi}/{\\varphi}_{norm})$"
# filelist=system("ls /export/scratch/vbotka-thesis/Plot/Figures/fig-3-2-*.csv")
# plot for [filename in filelist] filename with dots notitle
plot file_dd u 1:2 w l t "${C}_{mos}^{DD}$" at end, \
          '' u 1:3 w l t "${\\varphi}_{s}^{DD}$" at end, \
     file_hf u 1:2 w l t "${C}_{mos}^{HF}$" at beginning, \
          '' u 1:3 w l t "${\\varphi}_{s}^{HF}$" at beginning
# f(x) = a*x + b*x
# fit f(x) file via a, b
# plot f(x) dt 11
