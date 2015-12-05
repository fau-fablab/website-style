.PHONY: clean

fablab-bootstrap-theme.css: fablab-bootstrap-theme.scss
	sass $< $@

clean:
	rm -f fablab-bootstrap-theme.css *.map
