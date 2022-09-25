file_dit = "/export/scratch/vbotka-thesis/Plot/Figures/fig-4-8-dit-04.csv"
#
set terminal epslatex color 10 size 5.5in,3.9in
set output "/export/scratch/vbotka-thesis/Plot/Figures/fig-4-8-sk.tex"
#
set datafile separator ";"
set xrange [0.0:0.4]
set yrange [1e7:1e10]
set logscale y 10
set title "Hustota pascí rozhrania $Si-SiO_{2}$"
set xlabel "$E_{c} - E [eV]$"
set ylabel "$D_{it} [m^{-2}eV^{-1}]$"
plot file_dit using 1:2 with points notitle
