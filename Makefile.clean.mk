clean:	sub_clean
	find . -name \*.dvi -print -exec rm {} \;
	find . -name \*.eps -print -exec rm {} \;
	find . -name \*.eps1 -print -exec rm {} \;
	find . -name \*.lof -print -exec rm {} \;
	find . -name \*.log -print -exec rm {} \;
	find . -name \*.aux -print -exec rm {} \;
	find . -name \*.lot -print -exec rm {} \;
	find . -name \*.toc -print -exec rm {} \;
	find . -name \*.bak -print -exec rm {} \;
	find . -name \*.lat -print -exec rm {} \;
	find . -name \*.out -print -exec rm {} \;
	find . -name \*~ -print -exec rm {} \;

sub_clean:
	@for i in $(DIRS) ;\
	do \
	(cd $$i && echo "making all in $$i..." && \
	$(MAKE) CC='${CC}' clean ) || exit 1; \
	done;

clean-all:	sub_clean-all
	find . -name \*.dvi -print -exec rm {} \;
	find . -name \*.ps -print -exec rm {} \;
	find . -name \*.pdf -print -exec rm {} \;
# *.EPS must not be cleaned
	find . -name \*.eps -print -exec rm {} \;
	find . -name \*.eps1 -print -exec rm {} \;
	find . -name \*.lof -print -exec rm {} \;
	find . -name \*.log -print -exec rm {} \;
	find . -name \*.aux -print -exec rm {} \;
	find . -name \*.lot -print -exec rm {} \;
	find . -name \*.toc -print -exec rm {} \;
	find . -name \*.bak -print -exec rm {} \;
	find . -name \*.lat -print -exec rm {} \;
	find . -name \*.txt -print -exec rm {} \;
	find . -name \*~ -print -exec rm {} \;

sub_clean-all:
	@for i in $(DIRS) ;\
	do \
	(cd $$i && echo "making all in $$i..." && \
	$(MAKE) -f Makefile.mk CC='${CC}' clean-all ) || exit 1; \
	done;
