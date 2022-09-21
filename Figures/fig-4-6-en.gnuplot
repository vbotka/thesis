file_hf = "/export/scratch/vbotka-thesis/Plot/Figures/fig-4-6-hfqc-04.csv"
set output "/export/scratch/vbotka-thesis/Plot/Figures/fig-4-6-en.tex"
# set output '/export/scratch/vbotka-thesis/Plot/Figures/fig-4-6-en.pdf'
set terminal epslatex color 10 size 5.5in,3.6in
# set terminal pdf
set datafile separator ";"
# set key autotitle columnhead
set xrange [-2:6.0]
set yrange [0.5:1.2]
# set xtics 0.0,0.2e-6,0.8e-6
# set ytics 0.0,0.2e-6,0.8e-6
# set logscale x 10
# set logscale y 10
set title "QC method"
set xlabel "Gate voltage ${V}_g$"
set ylabel "${C}/{C}_{ox}$ \\qquad $(1-{\\varphi}/{\\varphi}_{norm})$"
# filelist=system("ls /export/scratch/vbotka-thesis/Plot/Figures/fig-4-6-*.csv")
# plot for [filename in filelist] filename with dots notitle
plot file_hf u 1:2 w l t "${C}_{mos}^{HF}$" at end, \
          '' u 1:3 w l t "${\\varphi}_{s}^{HF}$" at end
# f(x) = a*x + b*x
# fit f(x) file via a, b
# plot f(x) dt 11
