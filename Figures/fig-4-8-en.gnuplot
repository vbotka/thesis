file_dit = "/export/scratch/vbotka-thesis/Plot/Figures/fig-4-8-dit-04.csv"
set output "/export/scratch/vbotka-thesis/Plot/Figures/fig-4-8-en.tex"
# set output '/export/scratch/vbotka-thesis/Plot/Figures/fig-4-8-en.pdf'
set terminal epslatex color 10 size 5.5in,3.6in
# set terminal pdf
set datafile separator ";"
set xrange [0.0:0.4]
set yrange [1e7:1e11]
# set logscale x 10
set logscale y 10
set title "Trap density of interface $Si-SiO_{2}$"
set xlabel "$E_{c} - E [eV]$"
set ylabel "$D_{it} [m^{-2}eV^{-1}]$"
plot file_dit using 1:2 with points notitle
