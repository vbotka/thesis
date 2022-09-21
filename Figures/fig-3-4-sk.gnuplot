file_qc = "/export/scratch/vbotka-thesis/Plot/Figures/fig-3-4-qc-04.csv"
file_hf = "/export/scratch/vbotka-thesis/Plot/Figures/fig-3-4-hf-04.csv"
file_lf = "/export/scratch/vbotka-thesis/Plot/Figures/fig-3-4-lf-04.csv"
file_dd = "/export/scratch/vbotka-thesis/Plot/Figures/fig-3-4-dd-04.csv"
set output "/export/scratch/vbotka-thesis/Plot/Figures/fig-3-4-sk.tex"
# set output '/export/scratch/vbotka-thesis/Plot/Figures/fig-3-4-sk.pdf'
set terminal epslatex colortext color 10 size 5.5in,3.9in
# set terminal pdf
set datafile separator ";"
# set key autotitle columnhead
set xrange [-2.0:6.0]
set yrange [0.5:1.1]
# set xtics 0.0,0.2,0.8
# set ytics 0.0,0.2,0.8
# set logscale x 10
# set logscale y 10
set title "QC metóda"
set xlabel "Napätie hradla ${V}_g$"
set ylabel "${C}/{C}_{ox}$ \\qquad $(1-{\\varphi}/{\\varphi}_{norm})$"
# filelist=system("ls /export/scratch/vbotka-thesis/Plot/Figures/fig-3-4-*.csv")
# plot for [filename in filelist] filename with dots notitle
# set key inside bottom box background rgb "gray75"
set key left bottom textcolor variable samplen 4 spacing 2.0
plot file_qc u 1:2 w l t "${\\varphi}_{s}^{QC}$" lc rgb "#8B0000", \
          '' u 1:3 w l t "${C}_{mos}^{QC}$" lc rgb "#C71585", \
          '' u 1:4 w l t "${C}_{mos}^{QC}$" lc rgb "#FF4500", \
     file_hf u 1:2 w l t "${C}_{mos}^{HF}$" lc rgb "#008B8B", \
     file_lf u 1:2 w l t "${C}_{mos}^{LF}$" lc rgb "blue", \
     file_dd u 1:2 w l t "${\\varphi}_{s}^{DD}$" lc rgb "#708090"
