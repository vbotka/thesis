file_hfqc = "/export/scratch/vbotka-thesis/Plot/Figures/fig-4-7-hfqc-04.csv"
file_lf = "/export/scratch/vbotka-thesis/Plot/Figures/fig-4-7-lf-04.csv"
set output "/export/scratch/vbotka-thesis/Plot/Figures/fig-4-7-en.tex"
# set output '/export/scratch/vbotka-thesis/Plot/Figures/fig-4-7-en.pdf'
set terminal epslatex color 10 size 5.5in,3.6in
# set terminal pdf
set datafile separator ";"
set xrange [-2:6.0]
set yrange [0.5:1.2]
set title "QC method"
set xlabel "Gate voltage ${V}_g$"
set ylabel "${C}/{C}_{ox}$"
plot file_hfqc u 1:3 w l t "${C}_{mos}^{HF}$" at end, \
            '' u 1:4 w l t "${C}_{mos}^{LF}$" at end
#    file_lf u 1:2 w l t "${C}_{mos}^{LF}$" at end
