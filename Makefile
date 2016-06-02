SHELL = /bin/sh

include Makefile.suffixes.mk
include Makefile.variables.mk
include Makefile.subdirs.mk
include Makefile.clean.mk

all : main.pdf

APPENDICES = $(wildcard Appendices/*.tex)
CHAPTERS = $(wildcard Chapters/*.tex)
TITLE = $(wildcard Title/*.tex)
DIAGRAMS = Figures/diagram-1.EPS Figures/diagram-2.EPS
FIGS = $(wildcard Figures/*.jpg)
TARGETS = $(APPENDICES) $(CHAPTERS) $(TITLE) $(DIAGRAMS) \
          $(addsuffix .eps, $(basename $(FIGS)))

main.dvi : main.tex Thesis.cls $(TARGETS)
	latex main.tex
	latex main.tex
	latex main.tex
