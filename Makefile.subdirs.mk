sub_all:
	@for i in $(DIRS) ;\
	do \
	(cd $$i && echo "making all in $$i..." && \
	$(MAKE) CC='${CC}' all ) || exit 1; \
	done;
