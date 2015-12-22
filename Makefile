SASSC	:= sass		# the sass compiler
CSSDEST	:= ./css
JSDEST	:= ./js
SRC	:= ./scss/faufablab
BS	:= ./scss/bootstrap-sass
CSS	:= $(CSSDEST)/faufablab_bootstrap.css $(CSSDEST)/bs_theme.css
JS	:= $(JSDEST)/faufablab.js

.PHONY: all clean integrity

all: $(CSS)

clean:
	rm -f $(CSS) $(CSSDEST)/*.map

$(CSSDEST)/faufablab_bootstrap.css: $(SRC)/bootstrap.scss \
    $(SRC)/_base.scss \
    $(SRC)/_adjustments.scss \
    $(SRC)/_mixins.scss \
    $(wildcard $(BS)/*)
	# An adjusted bootstrap as standalone
	mkdir -p $(CSSDEST)
	$(SASSC) $< $@
	sed -i 's/@import url("\.\.\/\.\.\/fonts\/Fira\/fira\.css");/@import url("\.\.\/fonts\/Fira\/fira\.css");/' $@
	sed -i 's/@import url("\.\.\/\.\.\/fonts\/font-awesome\/css\//@import url("\.\.\/fonts\/font-awesome\/css\//' $@
	sed -i 's/\.\.\/bootstrap-sass\/assets\/fonts\/bootstrap\/glyphicons-halflings-regular/\.\.\/scss\/bootstrap-sass\/assets\/fonts\/bootstrap\/glyphicons-halflings-regular/g' $@

$(CSSDEST)/bs_theme.css: $(SRC)/theme.scss \
    $(SRC)/_base.scss \
    $(SRC)/_adjustments.scss \
    $(SRC)/_mixins.scss
	# A bootstrap theme in addition to bootstrap.css
	mkdir -p $(CSSDEST)
	$(SASSC) $< $@
	sed -i 's/@import url("\.\.\/\.\.\/fonts\/Fira\/fira\.css");/@import url("\.\.\/fonts\/Fira\/fira\.css");/' $@
	sed -i 's/@import url("\.\.\/\.\.\/fonts\/font-awesome\/css\//@import url("\.\.\/fonts\/font-awesome\/css\//' $@

integrity: $(CSS) $(JS)
	# Print out the integrity checksums of the generated css and js files
	@for file in $(CSS) $(JS) ; do \
	    sum=`cat $$file | openssl dgst -sha384 -binary | openssl enc -base64 -A` ; \
	    echo -e "$$file:\t\tsha384-$$sum" ; \
	done

# vim: st=8 ts=8 noet
