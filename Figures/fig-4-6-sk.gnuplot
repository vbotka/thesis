file_hf = "/export/scratch/vbotka-thesis/Plot/Figures/fig-4-6-hfqc-04.csv"
set output "/export/scratch/vbotka-thesis/Plot/Figures/fig-4-6-sk.tex"
# set output '/export/scratch/vbotka-thesis/Plot/Figures/fig-4-6-sk.pdf'
set terminal epslatex color 10 size 5.5in,3.6in
# set terminal pdf
set datafile separator ";"
set xrange [-2:6.0]
set yrange [0.5:1.2]
set title "QC metóda"
set xlabel "Napätie hradla ${V}_g$"
set ylabel "${C}/{C}_{ox}$ \\qquad $(1-{\\varphi}/{\\varphi}_{norm})$"
plot file_hf u 1:2 w l t "${C}_{mos}^{HF}$" at end, \
          '' u 1:3 w l t "${\\varphi}_{s}^{HF}$" at end
