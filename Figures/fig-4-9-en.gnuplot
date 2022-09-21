file_lf = "/export/scratch/vbotka-thesis/Plot/Figures/fig-4-9-lf-04.csv"
file_lfqc = "/export/scratch/vbotka-thesis/Plot/Figures/fig-4-9-lfqc-04.csv"
file_tlf = "/export/scratch/vbotka-thesis/Plot/Figures/fig-4-9-tlf-04.csv"
set output "/export/scratch/vbotka-thesis/Plot/Figures/fig-4-9-en.tex"
# set output '/export/scratch/vbotka-thesis/Plot/Figures/fig-4-9-en.pdf'
set terminal epslatex color 10 size 5.5in,3.9in
# set terminal pdf
set datafile separator ";"
# set key autotitle columnhead
set xrange [-2:4.0]
set yrange [0.5:1.2]
# set xtics 0.0,0.2e-6,0.8e-6
# set ytics 0.0,0.2e-6,0.8e-6
# set logscale x 10
# set logscale y 10
set title "Comparison of measured and theoretical LF C-V"
set xlabel "Gate voltage ${V}_g$"
set ylabel "${C}/{C}_{ox}$"
# filelist=system("ls /export/scratch/vbotka-thesis/Plot/Figures/fig-4-9-*.csv")
# plot for [filename in filelist] filename with dots notitle
plot file_lf u 1:2 w l t "${C}_{mos}^{LF}$" at end
#   file_tlf u 1:2 w l t "${C}_{mos}^{TLF}$" at beginning, \
#  file_lfqc u 1:2 w l t "${C}_{mos}^{QC}$"
# f(x) = a*x + b*x
# fit f(x) file via a, b
# plot f(x) dt 11
