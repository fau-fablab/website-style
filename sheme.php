<!DOCTYPE html>

<?php
	$githuburl = "https://github.com/fau-fablab/website-style";
	$title = "Website Style"
?>

<html>
    <head>
	<meta charset="utf-8">

        <!--- <select a good title> --->
        <title>FAU FabLab - <?= $title ?></title>
        <!--- </select a good title> --->
	<link rel="shortcut icon" href="https://fablab.fau.de/sites/fablab.fau.de/files/fablab_favicon_1.ico" type="image/x-icon">
        <link type="text/css" rel="stylesheet" media="all" href="https://user.fablab.fau.de/~ev80uhys/web/faufablab-light.css">	
    </head>
    <body>
         <div id="header" class="header">
             <div id="logo" class="logo">
                 <a href="https://fablab.fau.de">
                     <img src="https://fablab.fau.de/sites/fablab.fau.de/files/acquia_marina_logo.png" alt="Startseite">
                 </a>
             </div>

            <!--- <you can use the github banner> --->
             <div id="fork-on-github" style="position: fixed; top: 0; right: 0; border: 0;">
                 <a href="<?= $githuburl ?>">
                     <img src="https://camo.githubusercontent.com/52760788cde945287fbb584134c4cbc2bc36f904/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f6769746875622f726962626f6e732f666f726b6d655f72696768745f77686974655f6666666666662e706e67" alt="Fork me on GitHub" data-canonical-src="https://s3.amazonaws.com/github/ribbons/forkme_right_white_ffffff.png">
                 </a>
             </div>
            <!--- </you can use the github banner> --->
         </div>

        <div id="top" class="top">
        </div>

        <div id="content" class="content">
            <!--- <put your content here> --->
            <h1>This is the default sheme for a webpage with the FAU FabLab design</h1>
            <p>Use a sheme like <a href="sheme.html" download>this</a>, to apply the style to your page.</p>
            <h2>Features</h2>
            <ul>
                <li>header, top, content, footer classes</li>
                <li>background</li>
                <li>font, links</li>
                <li>lists</li>
            </ul>
            <h3>If you want to contribute, you can make a pull request on <a href="<?= $githuburl ?>">github</a>.</h3>
            <!--- </put your content here> --->
        </div>

        <div id="bottom" class="bottom">
            <!--- <you can modify the footer> --->
            <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title"><a href="<?= $githuburl ?>"><?= $title ?></a></span> by <a xmlns:cc="http://creativecommons.org/ns#" href="https://github.com/fau-fablab" property="cc:attributionName" rel="cc:attributionURL">FAU FabLab</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
            <!--- </you can modify the footer> --->
        </div>
    </body>
</html>
