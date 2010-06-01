/*** LAYOUT ***/

/* Base font.  This is a load of crap.  Why can't everyone have a default
 * browser font they actually want to see?  Fuck fuck fuckity fuck IE. */
body { font-family: DejaVu Sans, Verdana, sans-serif; font-size: 12px; }

/* General feel */
body { color: black; background: #c5baab url(${h.static_uri('local', 'images/layout/background.png')}) repeat; }

/* Core layout */

/* +----------+
 * |  HEADER  |  -- top, left, right
 * |   BODY   |  -- left, right
 * |  FOOTER  |  -- bottom, left, right
 * +----------+
 */
#header, #flash, #body, #footer { margin: 4em; border: 2px solid black; background: white; }
#header { margin-top: 8em; -moz-border-radius-topright: 4em; -webkit-border-top-right-radius: 4em; }
#header, #flash, #body { margin-bottom: 0; border-bottom: none; }
#flash, #body, #footer { margin-top: 0; border-top: none; }

#header { position: relative; height: 8em; color: white; background: #6998df url(${h.static_uri('local', 'images/layout/header-background.png')}) center bottom repeat-x; }
#header #logo { position: absolute; top: -85px; left: -45px; /* arbitrary */ }
#header #title { overflow: hidden; position: absolute; top: -0.87em; height: 0.87em; /* very approximately puts baseline on the top border */ right: 0; left: 0; text-align: center; font-size: 4em; line-height: 1em; color: black; font-weight: bold; text-transform: lowercase; }
#header #page-name { font-size: 2em; position: absolute; bottom: 1.33em; left: 155px /* beside the logo */; }

#header #pokedex-lookup { position: absolute; right: 1em; bottom: 1em; padding-top: 160px; min-width: 194px; /* make sure pokedex image fits */ padding-right: 1em; padding-bottom: 1em; background: url(${h.static_uri('local', 'images/layout/pokedex.png')}) right bottom no-repeat; }
#header #pokedex-lookup p { margin: 0; line-height: 1; white-space: nowrap; }
#header #pokedex-lookup label { font-size: 1.5em; }
#header #pokedex-lookup input[type="text"] { width: 12em; }

#header #user { position: absolute; top: 0; left: 170px; margin: 0.5em 0; }
#header #user a { color: #32445e; }
#header #user a:hover { color: #5e3d32; }

#menu { position: absolute; margin-top: -2.33em; margin-left: 4em; left: 140px; /* avoid eevee logo */ }
#menu > ul > li { float: left; padding: 0.33em; }
#menu > ul > li > a { background: #cfdcf0; -moz-border-radius-topright: 0.5em; -moz-border-radius-topleft: 0.5em; -webkit-border-top-right-radius: 0.5em; -webkit-border-top-left-radius: 0.5em; }
#menu li a { display: block; padding: 0.5em; }
/* Positioning of submenu */
#menu li { position: relative; }
#menu > ul > li > ul { z-index: 100; position: absolute; width: 16em; margin-top: -1px; border: 1px solid #3173ce; background: #cfdcf0; -moz-box-shadow: rgba(0, 0, 0, 0.5) 0.25em 0.25em 0.5em; -webkit-box-shadow: rgba(0, 0, 0, 0.5) 0.25em 0.25em 0.5em; box-shadow: rgba(0, 0, 0, 0.5) 0.25em 0.25em 0.5em; }
/* Show submenus on hover */
#menu > ul > li > ul { display: none; }
#menu > ul > li:hover { border-color: #3173ce; border-bottom-color: transparent; }
#menu > ul > li:hover > a { background: #3173ce; color: white; }
#menu > ul > li:hover > ul { display: block; }
/* General link stylin' */
#menu > ul > li > ul > li a:link { color: black; }
#menu > ul > li > ul > li a:visited { color: #404040; }
#menu > ul > li > ul > li a:hover { color: black; }
#menu > ul > li > ul > li a { padding: 0.33em; }
#menu > ul > li > ul > li a:link:hover,
#menu > ul > li > ul > li a:visited:hover { background: #e6eefa; background: #b1c6e7; }
/* Submenu headers */
#menu > ul > li > ul > li > a { font-weight: bold; }
/* Sub-submenu items, or regular things */
#menu > ul > li > ul > li > ul > li > a { padding-left: 1.33em; font-weight: normal; }
/* Below even that */
#menu > ul > li > ul > li > ul > li li > a { font-size: 0.9em; line-height: 1.11em; padding-left: 2.59em /* 2.33 / 0.8 */; font-weight: normal; font-style: italic; }

#flash { padding: 0.5em; }
#flash li { padding: 0.5em; border: 1px solid #d8bc8d; background: #e5d2b2; }
#flash li:first-child { -moz-border-radius-topright: 0.33em; -moz-border-radius-topleft: 0.33em; -webkit-border-top-right-radius: 0.33em; -webkit-border-top-left-radius: 0.33em; }
#flash li:last-child { -moz-border-radius-bottomright: 0.33em; -moz-border-radius-bottomleft: 0.33em; -webkit-border-bottom-right-radius: 0.33em; -webkit-border-bottom-left-radius: 0.33em; }
#flash li + li { border-top: none; }
#flash li img { margin: -0.17em 0 -0.17em -0.17em;  /* let icon sit in the padding but set it apart from the text */ }

#footer { padding: 0.33em; background: #ececec; color: #606060; }
#footer p { font-size: 0.8em; margin: 0.25em 0.5em; }
#footer #footer-timer { float: right; width: 20em; margin: 0.33em; line-height: 16px; text-align: right; }
#footer #footer-timer #footer-timer-pokemon { float: right; margin-left: 0.33em; }

#body { padding: 1em; }

h1 { margin-top: 1em; margin-bottom: 0.5em; padding-left: 36px; border: 1px solid #b58a4b; border-left: none; font-size: 1.6em; line-height: 1.5em; font-weight: bold; color: black; background: #cbab81 url(${h.static_uri('local', 'images/layout/h1-background.png')}) left center no-repeat; -webkit-border-top-right-radius: 1em; -webkit-border-bottom-right-radius: 1em; -moz-border-radius-topright: 1em; -moz-border-radius-bottomright: 1em; }
h2 { margin-top: 1em; margin-bottom: 0.5em; font-size: 1.5em; font-weight: bold; color: #202020; border-bottom: 1px solid #808080; }
h2:before, h2:after { content: '_'; visibility: hidden; /* extend underline */ }
h3 { margin-top: 0.5em; margin-bottom: 0.25em; font-size: 1.2em; font-weight: bold; color: #202020; border-bottom: 1px dotted #808080; }
h1, h2 { overflow: hidden /* clean up cruft and ensure bg/border don't encroach on floats */; }
h1:first-child, h2:first-child { margin-top: 0; }

#error-illustration { text-align: center; }

/*** USEFUL CLASSES ***/

.faded { opacity: 0.25; }
.disabled { color: #c0c0c0; text-decoration: line-through; }
.vertical-text { -moz-transform: rotate(-90deg); }

/* Links durp */
a:link { font-weight: bold; text-decoration: none; color: #3173ce; }
a:visited { font-weight: bold; text-decoration: none; color: #435b7d; }
a:hover { color: #ce3131; }
a.subtle { color: black; }
a.subtle:hover { text-decoration: underline; }

/* Tag defaults; careful what goes here! */
p { margin-bottom: 0.75em; line-height: 1.5; }
img { vertical-align: middle; }
abbr { border-bottom: 1px dotted black; }
small { font-size: 0.8em; }

pre { overflow: auto; margin: 0.5em 0; padding: 0.25em 0.5em; line-height: 1.5; background: #ece7df; }
code { padding: 0 0.17em; background: #ece7df; }
var { font-style: italic; font-family: monospace; }

/* Forms */
form {}
input, button, select { vertical-align: middle; }
input[type='button'], input[type='submit'], input[type='reset'], button { cursor: pointer; }
input[type='text'].error { background-color: #f2c6d8; }
dd.error { padding-left: 13em; background: url(${h.static_uri('spline', 'icons/exclamation-small-red.png')}) 12em center no-repeat; color: #a02424; }
p.error { padding-left: 16px; background: url(${h.static_uri('spline', 'icons/exclamation-small-red.png')}) left center no-repeat; color: #a02424; }
p + p.error { margin-top: -0.75em; }

/* Tables */
table { border-color: #b4c7e6; }

table tbody + tbody { border-top: 1px solid; border-color: inherit; }
table colgroup + colgroup { border-left: 1px solid; border-color: inherit; }

table th, table td { padding: 0.25em; }
table th { font-weight: normal; color: #2457a0; vertical-align: middle; }
table tr.subheader-row th { border-bottom: 1px solid #b4c7e6; background: #b4c7e6; color: black; }
table tr.header-row th { padding: 0.33em; vertical-align: bottom; border-bottom: 1px solid #b4c7e6; background: #c6d8f2 url(${h.static_uri('local', 'images/layout/th-background.png')}) bottom left repeat-x; color: black; }
table tr + tr.header-row th { border-top: 2px solid #668dcc; }

table.stretch { width: 100%; }
table.compact td { padding: 0.17em; }

table.striped-rows tr:nth-child(2n) { background: #f0f0f0; }
table.striped-rows tr:nth-child(2n):hover { background: #e9dbc9; }
table.striped-rows tr:nth-child(2n+1):hover { background: #f0e7db; }
table.striped-rows tr.header-row:hover, table.striped-rows tr.subheader-row:hover { outline: none; }
table.striped-row-groups tbody:nth-child(2n) { background: #f0f0f0; }
table.striped-row-groups tbody:nth-child(2n):hover { background: #e9dbc9; }
table.striped-row-groups tbody:nth-child(2n+1):hover { background: #f0e7db; }
table tr.color1 { ; }
table tr.color2 { background: #f0f0f0; }
table tr.color1:hover { background: #f8f3ee; }
table tr.color2:hover { background: #f0e7db; }

table tr.horizontal-line { height: 0 !important; padding: 0 !important; border-bottom: 1px solid #b4c7e6; }
table td.vertical-line { width: 0 !important; padding: 0 !important; border-right: 1px solid #b4c7e6; }
table td.number-cell { text-align: right; }


/* Lists */
ul.classic-list { margin: 0.5em 0; margin-left: 3em; list-style-type: disc; }
ul.classic-list li { line-height: 1.5; }

ul.inline { overflow: hidden /* new float context */; }
ul.inline li { float: left; }

ul.inline-commas { display: inline; }
ul.inline-commas > li { display: inline; }
ul.inline-commas > li:after { content: ','; }
ul.inline-commas > li:last-child:after { content: none; }

ol { margin: 0.5em 0; margin-left: 3em; list-style: lower-roman; }
ol li { line-height: 1.5; }

/* Definition lists via floats */
dl { overflow: hidden /* new float context */; margin-bottom: 0.75em; }
dt { float: left; clear: left; width: 11.5em; margin-right: 0.5em; text-align: right; color: #2457a0; }
dt:after { content: ':'; }
dd { padding-left: 12em /* float width, so hover highlight includes dt but lines wrap correctly */; }
dd:after { content: 'float clear'; display: block; clear: both; height: 0; visibility: hidden; }
dt, dd { line-height: 1.5; }


/* Markdown default formatting -- Pokédex effects, forum posts, etc. */
/* TODO: Merge this and the pokedex support into spline core, when forum needs it. */
.markdown a { font-weight: normal; }

.markdown table { margin-bottom: 0.75em; line-height: 1.33em; }

.markdown table thead tr th { padding: 0.33em; vertical-align: bottom; border-bottom: 1px solid #b4c7e6; background: #c6d8f2 url(${h.static_uri('local', 'images/layout/th-background.png')}) bottom left repeat-x; color: black; }

.markdown table tbody tr:nth-child(2n) { background: #f0f0f0; }
.markdown table tbody tr:nth-child(2n):hover { background: #e9dbc9; }
.markdown table tbody tr:nth-child(2n+1):hover { background: #f0e7db; }

.markdown ul { margin: 0.5em 0; margin-left: 3em; list-style-type: disc; }
.markdown ul li { line-height: 1.5; }
