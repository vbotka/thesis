file_hf = "/export/scratch/vbotka-thesis/Plot/Figures/fig-4-7-hfqc-04.csv"
file_lf = "/export/scratch/vbotka-thesis/Plot/Figures/fig-4-7-lfqc-04.csv"
set output "/export/scratch/vbotka-thesis/Plot/Figures/fig-4-7-en.tex"
# set output '/export/scratch/vbotka-thesis/Plot/Figures/fig-4-7-en.pdf'
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
set ylabel "${C}/{C}_{ox}$"
# filelist=system("ls /export/scratch/vbotka-thesis/Plot/Figures/fig-4-7-*.csv")
# plot for [filename in filelist] filename with dots notitle
plot file_hf u 1:2 w l t "${C}_{mos}^{HF}$" at end, \
     file_lf u 1:2 w l t "${C}_{mos}^{LF}$" at end
# f(x) = a*x + b*x
# fit f(x) file via a, b
# plot f(x) dt 11
