SASSC	:= sass		# the sass compiler
DEST	:= ./css
SRC	:= ./scss/faufablab
BS	:= ./scss/bootstrap-sass
FA	:= ./fonts/font-awesome
CSS	:= $(DEST)/faufablab_bootstrap.css $(DEST)/bs_theme.css

.PHONY: all clean

all: $(CSS)

clean:
	rm -f $(CSS) $(DEST)/*.map

$(DEST)/faufablab_bootstrap.css: $(SRC)/bootstrap.scss \
    $(SRC)/_base.scss \
    $(SRC)/_adjustments.scss \
    $(SRC)/_mixins.scss \
    $(wildcard $(BS)/*) \
    $(wildcard $(FA)/*)
	# An adjusted bootstrap as standalone
	mkdir -p $(DEST)
	$(SASSC) $< $@
	sed -i 's/@import url("\.\.\/\.\.\/fonts\/Fira\/fira\.css");/@import url("\.\.\/fonts\/Fira\/fira\.css");/' $@
	sed -i 's/\.\.\/bootstrap-sass\/assets\/fonts\/bootstrap\/glyphicons-halflings-regular/\.\.\/scss\/bootstrap-sass\/assets\/fonts\/bootstrap\/glyphicons-halflings-regular/g' $@

$(DEST)/bs_theme.css: $(SRC)/theme.scss \
    $(SRC)/_base.scss \
    $(SRC)/_adjustments.scss \
    $(SRC)/_mixins.scss \
    $(wildcard $(FA)/*)
	# A bootstrap theme in addition to bootstrap.css
	mkdir -p $(DEST)
	$(SASSC) $< $@
	sed -i 's/@import url("\.\.\/\.\.\/fonts\/Fira\/fira\.css");/@import url("\.\.\/fonts\/Fira\/fira\.css");/' $@

# vim: st=8 ts=8 noet
