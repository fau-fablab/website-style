FAU FabLab - Website style
==========================

A bootstrap theme for websites of FAU FabLab.

[![Build Status](https://travis-ci.org/fau-fablab/website-style.svg)](https://travis-ci.org/fau-fablab/website-style)

Usage
-----

 - Either add this repo as submodule to your project or add this **instead** of `bootstrap.css` to your site:

```html
<link rel="stylesheet" href="https://fau-fablab.github.io/website-style/css/faufablab_bootstrap.css" type="text/css" >
<!-- if you want to use the javascript, also add this: -->
<script src="https://fau-fablab.github.io/website-style/js/faufablab.js"></script>

<!-- ... -->

<script src="js/jquery-1.11.3.min.js" integrity="sha384-+54fLHoW8AHu3nHtUxs9fW2XKOZ2ZwKHB5olRtKSDTKJIb1Na1EceFZMS8E72mzW" crossorigin="anonymous"></script>
<script src="js/bootstrap-3.3.6.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<script src="js/faufablab.js"></script>
```

 - If you need this as a **theme additional** to bootstrap, you can use `bs_theme.css` instead of `faufablab_bootstrap.css`.
   **Note:** as it is very nasty to create a theme, too, maybe it will be removed soon.

See https://fau-fablab.github.io/website-style/ for a example.

Contributing
------------

 - Edit the files in [`./scss/faufablab/`](./scss/faufablab):
   - Check, if you can edit [bootstrap's variables](https://getbootstrap.com/customize/#less-variables) to match your idea
   - if so, add them to [`scss/faufablab/bootstrap.scss`](scss/faufablab/bootstrap.scss) and try to find selectors etc. to imitate this style in [`scss/faufablab/theme.scss`](scss/faufablab/theme.scss)
   - If you can't use the bootstrap configuration write your style in [`scss/faufablab/adjustments.scss`](scss/faufablab/adjustments.scss)
 - Run [`make`](Makefile) to create the `css`
 - See [`index.html`](index.html) for checking your changes and look at [`index-theme.html`](index-theme.html) that it does not completely break...
 - Run `make integrity` and update the `index*.html` example sites

### Submodules

 - fonts/Fira
 - fonts/font-awesome
 - scss/bootstrap-sass

-> `clone --recurse-submodules` and `git submodule init && git submodule update`

### File structure

```tree
.
├── css                         # the output direcory
├── fonts
│   ├── Fira                    # mozillas fira sans repo
│   └── font-awesome            # a icon font similar to halflings glyphicons
├── js
│   ├── bootstrap-3.3.6.min.js  # a minified Bootstrap javascript [blob](https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js)
│   ├── jquery-1.11.3.min.js    # a minified [jQuery](https://github.com/jquery/jquery) [blob](http://code.jquery.com/jquery-1.11.3.min.js)
│   └── faufablab.js            # fancy animations and such hipster shit
└── scss
    ├── bootstrap-sass          # sass port of twitter bootstrap
    └── faufablab/              # The actual style written in scss (sass)
        ├── _mixins.scss        # useful mixins and functions for sass
        ├── _base.scss          # the basic styles like color definitions, ...
        ├── _adjustments.scss   # overwriting bootstrap style, that is not configurable
        ├── bootstrap.scss      # configuring bootstrap definitions
        └── theme.scss          # overwriting bootstrap style, that is also configurable
```

### Build structure:

```
                   .- faufablab/bootstrap ---- bootstrap-sass -.                               .--> css/faufablab_bootstrap.css
                  /                  ^                          \                             /          ^ 
                 /                   |                           \                           /           |
faufablab/base -<                  mixins                         >- faufablab/adjustments -<   fira.css & font-awesome.css
                 \                   |                           /                           \           |
                  \                  v                          /                             \          v
                   `----------- faufablab/theme ---------------'                               `--> css/bs_theme.css
```

Please don't write sass code, use scss.

### Requirements

You need `sass`. It's a ruby gem, but some distros have also packages.

### Updating

The submodules except font-awesome should track branches so a `git submodule foreach git pull` will do the job.

In font-awesome currently the tag `v4.5.0` is checked out and so the commit "t is "hardcoded". Go to [`fonts/font-awesome/`](fonts/font-awesome) and make `git fetch && git checkout v4.5.0`.

To upgrade the modules, change their `branch` in [`./.gitmodules`](.gitmodules) and check out the new tag in font-awesome.

As the [`./js`](./js) folder contains only blobs, you only have to download these blobs manually (e.g. from a cdn).

LICENSE
-------
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">website-style</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="https://github.com/fau-fablab/website-style" property="cc:attributionName" rel="cc:attributionURL">https://github.com/fau-fablab/website-style</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.

Note: the submodules my have other LICENSEs.
