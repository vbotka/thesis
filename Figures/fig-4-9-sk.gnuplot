file_lf = "/export/scratch/vbotka-thesis/Plot/Figures/fig-4-9-lf-04.csv"
file_lfqc = "/export/scratch/vbotka-thesis/Plot/Figures/fig-4-9-lfqc-04.csv"
file_tlf = "/export/scratch/vbotka-thesis/Plot/Figures/fig-4-9-tlf-04.csv"
#
set terminal epslatex color 10 size 5.5in,3.9in
set output "/export/scratch/vbotka-thesis/Plot/Figures/fig-4-9-sk.tex"
#
set datafile separator ";"
set xrange [-2:4.0]
set yrange [0.5:1.2]
set title "Porovnanie nameranej a reoretickej LF C-V"
set xlabel "Napätie hradla ${V}_g$"
set ylabel "${C}/{C}_{ox}$"
#
plot file_lf u 1:2 w l t "${C}_{mos}^{LF}$" at beginning
#   file_tlf u 1:2 w l t "${C}_{mos}^{TLF}$" at beginning, \
#  file_lfqc u 1:2 w l t "${C}_{mos}^{QC}$"
