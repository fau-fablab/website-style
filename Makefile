SASSC	:= sass		# the sass compiler
DEST	:= ./css
SRC	:= ./scss
CSS	:= $(DEST)/faufablab_bootstrap.css $(DEST)/bs_theme.css

.PHONY: all clean

all: ${CSS}

clean:
	rm -f $(CSS) $(DEST)/*.map

$(DEST)/faufablab_bootstrap.css: $(SRC)/faufablab/bootstrap.scss \
    $(SRC)/faufablab/base.scss \
    $(SRC)/faufablab/adjustments.scss \
    $(SRC)/mixins.scss \
    $(SRC)/bootstrap-sass/assets/stylesheets/_bootstrap.scss \
    fonts/Fira/fira.css
	# An adjusted bootstrap as standalone
	mkdir -p $(DEST)
	$(SASSC) $< $@

$(DEST)/bs_theme.css: $(SRC)/faufablab/theme.scss \
    $(SRC)/faufablab/base.scss \
    $(SRC)/faufablab/adjustments.scss \
    $(SRC)/mixins.scss \
    fonts/Fira/fira.css
	# A bootstrap theme in addition to bootstrap.css
	mkdir -p $(DEST)
	$(SASSC) $< $@

# vim: st=8 ts=8 noe
