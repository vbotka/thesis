file_dd = "/export/scratch/vbotka-thesis/Plot/Figures/fig-3-2-ddqc-04.csv"
file_hf = "/export/scratch/vbotka-thesis/Plot/Figures/fig-3-2-hfqc-04.csv"
#
set terminal epslatex color 10 size 5.5in,3.9in
set output "/export/scratch/vbotka-thesis/Plot/Figures/fig-3-2-en.tex"
#
set datafile separator ";"
set xrange [-2:10]
set yrange [0:1.2]
set title "QC method"
set xlabel "Gate voltage ${V}_g$"
set ylabel "${C}/{C}_{ox}$ \\qquad $(1-{\\varphi}/{\\varphi}_{norm})$"
plot file_dd u 1:2 w l t "${C}_{mos}^{DD}$" at end, \
          '' u 1:3 w l t "${\\varphi}_{s}^{DD}$" at end, \
     file_hf u 1:2 w l t "${C}_{mos}^{HF}$" at end, \
          '' u 1:3 w l t "${\\varphi}_{s}^{HF}$" at end
