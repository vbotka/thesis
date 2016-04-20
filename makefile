include Makefile.suffixes.mk
include Makefile.variables.mk
include Makefile.subdirs.mk
include Makefile.clean.mk

all : main.pdf sub_all

FIGS = Figures/fig-1-1.eps Figures/fig-1-2.eps Figures/fig-1-3.eps Figures/fig-3-1.eps Figures/fig-3-2.eps Figures/fig-3-3.eps Figures/fig-3-4.eps Figures/fig-3-5.eps Figures/fig-3-6.eps Figures/fig-3-7.eps Figures/fig-4-1.eps Figures/fig-4-2.eps Figures/fig-4-3.eps Figures/fig-4-4.eps Figures/fig-4-5.eps Figures/fig-4-6.eps Figures/fig-4-7.eps Figures/fig-4-8.eps Figures/fig-4-9.eps Figures/fig-4-10.eps Figures/fig-5-1.eps Figures/fig-5-2.eps Figures/fig-5-3.eps Figures/fig-5-4.eps Figures/fig-5-5.eps Figures/fig-5-6.eps Figures/fig-6-1.eps Figures/fig-6-2.eps Figures/fig-6-3.eps Figures/fig-6-4.eps Figures/fig-6-5.eps Figures/fig-6-6.eps Figures/fig-7-1.eps Figures/fig-7-2.eps Figures/fig-7-3.eps Figures/fig-7-4.eps Figures/fig-7-5.eps Figures/fig-7-6.eps Figures/fig-app-1.eps Figures/fig-app-2.eps Figures/fig-app-3.eps 

APPENDICES = Appendices/AppendixA.tex Appendices/AppendixB.tex Appendices/AppendixC.tex Appendices/AppendixD.tex Appendices/AppendixE.tex Appendices/AppendixF.tex Appendices/AppendixG.tex Appendices/AppendixH.tex Appendices/AppendixBibliography.tex

CHAPTERS = Chapters/Introduction.tex Chapters/Chapter1.tex Chapters/Chapter2.tex Chapters/Chapter3.tex Chapters/Chapter4.tex Chapters/Chapter5.tex Chapters/Chapter6.tex Chapters/Chapter7.tex Chapters/Chapter8.tex Chapters/Chapter9.tex

DIAGRAMS = Figures/diagram-1.EPS Figures/diagram-2.EPS

TITLE = Title/Abbreviations.tex Title/Abstract.tex Title/Acknowledgement.tex Title/Constants.tex Title/Declaration.tex Title/Dedication.tex Title/Symbols.tex

main.dvi	: main.tex Thesis.cls $(APPENDICES) $(CHAPTERS) $(FIGS) $(DIAGRAMS) $(TITLE)
	latex main.tex
	latex main.tex
	latex main.tex
#	latex2html main.tex
