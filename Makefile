SHELL = /bin/sh

include Makefile.suffixes.mk
# include Makefile.variables.mk
# include Makefile.subdirs.mk
include Makefile.clean.mk

# ALL - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

all : main-en.pdf main-sk.pdf

MAIN = main-en.tex Thesis-en.cls main-sk.tex Thesis-sk.cls
APPENDICES = $(wildcard Appendices/*.tex)
CHAPTERS = $(wildcard Chapters/*.tex)
TITLE = $(wildcard Title/*.tex)
DIAGRAMS = Figures/diagram-1.EPS Figures/diagram-2.EPS
FIGS = $(wildcard Figures/*.jpg Figures/*.gnuplot)
EN_FIGS_EPS = $(addsuffix .eps, $(basename $(FIGS)))
TARGETS = $(MAIN) $(APPENDICES) $(CHAPTERS) $(TITLE) $(DIAGRAMS) $(EN_FIGS_EPS)

# EN - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

all-en : main-en.pdf

EN_MAIN = main-en.tex Thesis-en.cls
EN_APPENDICES = $(wildcard Appendices/EN-*.tex)
EN_CHAPTERS = $(wildcard Chapters/EN-*.tex)
EN_TITLE = $(wildcard Title/EN-*.tex)
EN_DIAGRAMS = Figures/diagram-1.EPS Figures/diagram-2.EPS
EN_FIGS = $(wildcard Figures/*.jpg Figures/*-en.gnuplot)
EN_FIGS_EPS = $(addsuffix .eps, $(basename $(EN_FIGS)))
EN_TARGETS = $(EN_MAIN) $(EN_APPENDICES) $(EN_CHAPTERS) $(EN_TITLE) $(EN_DIAGRAMS) $(EN_FIGS_EPS)

main-en.dvi : $(TARGETS) $(EN_TARGETS)
	latex main-en.tex
	latex main-en.tex
	latex main-en.tex

all-en-eps : $(EN_FIGS_EPS)

EN_FIGS = $(wildcard Figures/*.jpg Figures/*-en.gnuplot)
EN_FIGS_EPS = $(addsuffix .eps, $(basename $(EN_FIGS)))

# SK - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

all-sk : main-sk.pdf

SK_MAIN = main-sk.tex Thesis-sk.cls
SK_APPENDICES = $(wildcard Appendices/SK-*.tex)
SK_CHAPTERS = $(wildcard Chapters/SK-*.tex)
SK_TITLE = $(wildcard Title/SK-*.tex)
SK_DIAGRAMS = Figures/diagram-1.EPS Figures/diagram-2.EPS
SK_FIGS = $(wildcard Figures/*.jpg)
SK_FIGS = $(wildcard Figures/*.jpg Figures/*-sk.gnuplot)
SK_FIGS_EPS = $(addsuffix .eps, $(basename $(SK_FIGS)))
SK_TARGETS = $(SK_MAIN) $(SK_APPENDICES) $(SK_CHAPTERS) $(SK_TITLE) $(SK_DIAGRAMS) $(SK_FIGS_EPS)

main-sk.dvi : $(TARGETS) $(SK_TARGETS)
	latex main-sk.tex
	latex main-sk.tex
	latex main-sk.tex

all-sk-eps : $(SK_FIGS_EPS)

SK_FIGS = $(wildcard Figures/*.jpg Figures/*-sk.gnuplot)
SK_FIGS_EPS = $(addsuffix .eps, $(basename $(SK_FIGS)))
