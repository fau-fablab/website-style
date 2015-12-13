FAU FabLab - Website style
==========================

A bootstrap theme for websites of FAU FabLab.

[![Build Status](https://travis-ci.org/fau-fablab/website-style.svg)](https://travis-ci.org/fau-fablab/website-style)

Usage
-----

Either add this repo as submodule to your project or add

```html
<link rel="stylesheet" href="https://fau-fablab.github.io/website-style/css/faufablab.css" type="text/css" >
<!-- if you want to use the javascript, also add this: -->
<script src="https://fau-fablab.github.io/website-style/js/faufablab.js"></script>
```

to your bootstrap site.

See https://fau-fablab.github.io/website-style/ for a example.

Contributing
------------

 - Edit [`./css/faufablab.scss`](./css/faufablab.scss)
 - Run [`make`](Makefile) to create the `css`
 - See [`index.html`](index.html) for checking your changes

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
