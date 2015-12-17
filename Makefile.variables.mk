DIRS != names=`ls -1` ;\
	for i in $$names ;\
	do \
	if test -d $$i && test -f $$i/Makefile.mk; \
	then \
	echo $$i;\
	fi; \
	done; 
