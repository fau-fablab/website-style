SASSC	:= sass		# the sass compiler
DEST	:= ./css
SRC	:= ./scss
CSS	:= $(DEST)/faufablab_bootstrap.css

.PHONY: all clean

all: ${CSS}

clean:
	rm -f $(CSS) $(DEST)/*.map

$(DEST)/faufablab_bootstrap.css: $(SRC)/faufablab/bootstrap.scss \
    $(SRC)/faufablab/adjustments.scss \
    $(SRC)/bootstrap-sass/assets/stylesheets/_bootstrap.scss \
    fonts/Fira/fira.css
	mkdir -p $(DEST)
	$(SASSC) $< $@

# vim: ts=8 noe
