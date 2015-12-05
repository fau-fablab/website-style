FAU FabLab - Website style
==========================

A bootstrap theme for websites of FAU FabLab.

Usage
-----

Either add this repo as submodule or add

```html
<link rel="stylesheet" href="https://raw.githubusercontent.com/fau-fablab/website-style/bootstrap/fablab-bootstrap-theme.css" type="text/css" >
```

additional to bootstrap.

See [`index.html`](index.html) as a example.

Contributing
------------

 - Edit [`fablab-bootstrap-theme.scss`](./fablab-bootstrap-theme.scss)
 - Run [`make`](Makefile) to create the `css`

Please don't write sass code, use scss:

```
style.scss ------.
   ^              \
   |               \ sass
   | sass-convert   ------> style.css
   |               /
   v              /
style.sass ------'
```

LICENSE
-------
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">website-style</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="https://github.com/fau-fablab/website-style" property="cc:attributionName" rel="cc:attributionURL">https://github.com/fau-fablab/website-style</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
