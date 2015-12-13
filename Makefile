SUBDIRS	= css

.PHONY: all clean

all:
	cd css && $(MAKE) $@

clean:
	cd css && $(MAKE) $@
