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
#header, #body, #footer { margin: 4em; border: 2px solid black; background: white; }
#header { margin-top: 8em; -moz-border-radius-topright: 4em; -webkit-border-top-right-radius: 4em; }
#header, #body { margin-bottom: 0; border-bottom: none; }
#body, #footer { margin-top: 0; border-top: none; }

#header { position: relative; height: 8em; color: white; background: #6998df url(${h.static_uri('local', 'images/layout/header-background.png')}) center bottom repeat-x; }
#header #logo { position: absolute; top: -80px; left: -40px; /* arbitrary */ }
#header #title { position: absolute; top: -0.87em /* very approximately puts baseline on the top border */; right: 2em; right: 0; left: 0; text-align: center; font-size: 4em; line-height: 1em; color: black; font-weight: bold; text-transform: lowercase; }
#header #page-name { font-size: 2em; margin: 1em; margin-left: 200px /* beside the logo */; }

#header #pokedex-lookup { position: absolute; right: 1em; bottom: 1em; padding-top: 160px; min-width: 194px; /* make sure pokedex image fits */ padding-right: 1em; padding-bottom: 1em; background: url(${h.static_uri('local', 'images/layout/pokedex.png')}) right bottom no-repeat; }
#header #pokedex-lookup p { margin: 0; line-height: 1; }
#header #pokedex-lookup label { font-size: 1.5em; }

#menu { position: absolute; margin-top: -2em; margin-left: 4em; left: 140px; /* avoid eevee logo */ }
#menu > ul > li { display: inline-block; margin-top: -1px; padding: 1px 1px 0 1px /* for the border on hover */; }
#menu > ul > li > a { background: rgba(100%, 100%, 100%, 0.5); }
#menu li a { display: block; padding: 0.5em; }
/* Positioning of submenu */
#menu li { position: relative; }
#menu > ul > li > ul { position: absolute; width: 16em; left: -1px; border: 1px solid #3173ce; border-top: none; background: #f4f4f4; }
/* Show submenus on hover */
#menu > ul > li > ul { display: none; }
#menu > ul > li:hover { padding: 0; border: 1px solid #3173ce; border-bottom: none; }
#menu > ul > li:hover > ul { display: block; }
/* XXX This used to be for submenu headers, but there aren't enough links for that yet */
#menu > ul > li > ul > li > a:link,
#menu > ul > li > ul > li > a:visited { color: black; }
#menu > ul > li > ul > li a { padding: 0.33em; padding-left: 1em; font-weight: normal; }
#menu > ul > li > ul > li a:hover { background: #e6eefa; }

#footer { padding: 1em; background: #e8e8e8; }

#body { padding: 1em; }

h1 { margin-top: 1em; margin-bottom: 0.5em; padding-left: 36px; border: 1px solid #b58a4b; border-left: none; font-size: 1.6em; line-height: 1.5em; font-weight: bold; color: black; background: #cbab81 url(${h.static_uri('local', 'images/layout/h1-background.png')}) left center no-repeat; -webkit-border-top-right-radius: 1em; -webkit-border-bottom-right-radius: 1em; -moz-border-radius-topright: 1em; -moz-border-radius-bottomright: 1em; }
h2 { margin-top: 1em; margin-bottom: 0.5em; font-size: 1.5em; font-weight: bold; color: #202020; border-bottom: 1px solid #808080; }
h2:before, h2:after { content: '_'; visibility: hidden; /* extend underline */ }
h3 { margin-top: 0.5em; margin-bottom: 0.25em; font-size: 1.2em; font-weight: bold; color: #202020; border-bottom: 1px dotted #808080; }
h1, h2 { overflow: hidden /* clean up cruft and ensure bg/border don't encroach on floats */; }
h1:first-child, h2:first-child { margin-top: 0; }

/*** USEFUL CLASSES ***/

.faded { opacity: 0.25; }
.disabled { color: #c0c0c0; text-decoration: line-through; }

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

pre { margin: 0.5em 0; padding: 0.25em 0.5em; line-height: 1.5; background: #ece7df; }
code { padding: 0 0.17em; background: #ece7df; }
var { font-style: italic; font-family: monospace; }

/* Forms */
form {}
input[type='text'].error { background-color: #f2c6d8; }
dd.error { padding-left: 13em; background: url(${h.static_uri('spline', 'icons/exclamation-small-red.png')}) 12em center no-repeat; color: #a02424; }
p.error { margin-top: -0.75em; padding-left: 16px; background: url(${h.static_uri('spline', 'icons/exclamation-small-red.png')}) left center no-repeat; color: #a02424; }

/* Tables */
table th, table td { padding: 0.25em; }
table th { font-weight: normal; color: #2457a0; }
table tr.subheader-row th { border-bottom: 1px solid #b4c7e6; background: #b4c7e6; color: black; }
table tr.header-row th { padding: 0.33em; vertical-align: bottom; border-bottom: 1px solid #b4c7e6; background: #c6d8f2 url(${h.static_uri('local', 'images/layout/th-background.png')}) bottom left repeat-x; color: black; }
table tr + tr.header-row th { border-top: 2px solid #668dcc; }

table.striped-rows tr:nth-child(2n) { background: #f0f0f0; }
table.striped-rows tr:nth-child(2n):hover { background: #fbfbc8; }
table.striped-rows tr:nth-child(2n+1):hover { background: #fcfcd5; }
table.striped-rows tr.header-row:hover, table.striped-rows tr.subheader-row:hover { outline: none; }
table tr.color1 { ; }
table tr.color2 { background: #f0f0f0; }
table tr.color1:hover { background: #fcfcd5; }
table tr.color2:hover { background: #fbfbc8; }

table tr.horizontal-line { height: 0 !important; padding: 0 !important; border-bottom: 1px solid #b4c7e6; }
table td.vertical-line { width: 0 !important; padding: 0 !important; border-right: 1px solid #b4c7e6; }


/* Lists */
ul.classic-list { margin: 0.5em 0; margin-left: 1.5em; list-style-type: disc; }
ul.classic-list li { line-height: 1.5; }

ul.inline { overflow: hidden /* new float context */; }
ul.inline li { float: left; }

ul.inline-commas { display: inline; }
ul.inline-commas > li { display: inline; }
ul.inline-commas > li:after { content: ','; }
ul.inline-commas > li:last-child:after { content: none; }

ol { margin: 0.5em 0; margin-left: 1.5em; list-style: lower-roman; }
ol li { line-height: 1.5; }

/* Definition lists via floats */
dl { overflow: hidden /* new float context */; }
dt { float: left; clear: left; width: 11.5em; margin-right: 0.5em; text-align: right; color: #2457a0; }
dt:after { content: ':'; }
dd { padding-left: 12em /* float width, so hover highlight includes dt but lines wrap correctly */; }
dd:after { content: 'float clear'; display: block; clear: both; height: 0; visibility: hidden; }
dt, dd { line-height: 1.5; }

ul.classic { padding-left: 2em; }
ul.classic > li { line-height: 1.5; list-style-type: disc; }
