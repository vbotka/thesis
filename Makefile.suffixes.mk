.SUFFIXES		: .tex .dvi .fig .aux .eps .spr .lat .ps .pdf .jpg .eps1i .png .pnm .gnuplot
.gnuplot.eps		:
	gnuplot $<
.fig.eps		:
	fig2dev -L ps$@ $<
.fig.eps1		:
	fig2dev -L ps -m 0.8 -z A4$@ $<
.spr.lat		:
	printf "/ft\nq\n" > .xspread.cmd; \
	xspread -X$@ <.xspread.cmd; \
	name=`echo$@ |awk -F. '{for(i=1;i<NF;i++) {pom=(pom $$i".")}; print pom}'`; \
	mv$@.lat.lat $${name}lat
.ps.pdf			:
	ps2pdf -sPAPERSIZE=a4 $< $@
.pdf.ps			:
	pdf2ps $< $@
.dvi.ps			:
	dvips -o $@ $<
.jpg.eps		:
	convert $< $@
.ps.txt			:
	ps2ascii $@ $<
.png.eps		:
	cat $@ | pngtopnm | pnmtops > $<
.pnm.eps		:
	cat $@ | pnmtops > $<
