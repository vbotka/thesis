file_qc = "/export/scratch/vbotka-thesis/Plot/Figures/fig-3-3-qc-10.csv"
file_hf = "/export/scratch/vbotka-thesis/Plot/Figures/fig-3-3-hf-10.csv"
file_lf = "/export/scratch/vbotka-thesis/Plot/Figures/fig-3-3-lf-10.csv"
file_dd = "/export/scratch/vbotka-thesis/Plot/Figures/fig-3-3-dd-10.csv"
#
set terminal epslatex color 10 size 5.5in,3.9in
set output "/export/scratch/vbotka-thesis/Plot/Figures/fig-3-3-en.tex"
#
set datafile separator ";"
set xrange [-6:2.0]
set yrange [0.5:1.1]
set title "QC method"
set xlabel "Gate voltage ${V}_g$"
set ylabel "${C}/{C}_{ox}$ \\qquad $(1-{\\varphi}/{\\varphi}_{norm})$"
set key bottom textcolor variable samplen 4 spacing 2.0
plot file_qc u 1:2 w l t "${\\varphi}_{s}^{QC}$" lc rgb "#8B0000", \
          '' u 1:3 w l t "${C}_{mos}^{QC}$" lc rgb "#C71585", \
          '' u 1:4 w l t "${C}_{mos}^{QC}$" lc rgb "#FF4500", \
     file_hf u 1:2 w l t "${C}_{mos}^{HF}$" lc rgb "#008B8B", \
     file_lf u 1:2 w l t "${C}_{mos}^{LF}$" lc rgb "blue", \
     file_dd u 1:2 w l t "${\\varphi}_{s}^{DD}$" lc rgb "#708090"
