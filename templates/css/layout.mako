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

#header { position: relative; height: 8em; color: white; background: #6998df url(${h.static_uri('local', 'images/layout/header-background.png')}) center no-repeat; }
#header #logo { position: absolute; top: -80px; left: -40px; /* arbitrary */ }
#header #title { position: absolute; top: -0.87em /* very approximately puts baseline on the top border */; right: 2em; right: 0; left: 0; text-align: center; font-size: 4em; line-height: 1em; color: black; font-weight: bold; text-transform: lowercase; }
#header #page-name { font-size: 2em; margin: 1em; margin-left: 200px /* beside the logo */; }

#header #pokedex-lookup { position: absolute; right: 1em; bottom: 1em; padding-top: 160px; min-width: 194px; /* make sure pokedex image fits */ padding-right: 1em; padding-bottom: 1em; background: url(${h.static_uri('local', 'images/layout/pokedex.png')}) right bottom no-repeat; }
#header #pokedex-lookup label { font-size: 1.5em; }

#header #links { position: absolute; bottom: 0; left: 140px; /* avoid eevee logo */ }
#header #links li { display: inline-block; padding: 0.5em; background: rgba(100%, 100%, 100%, 0.5); }

#body { padding: 1em; }

h1 { margin-top: 1em; margin-bottom: 0.5em; padding-left: 36px; border: 1px solid #b58a4b; border-left: none; font-size: 1.6em; line-height: 1.5em; font-weight: bold; color: black; background: #cbab81 url(${h.static_uri('local', 'images/layout/h1-background.png')}) left center no-repeat; -webkit-border-top-right-radius: 1em; -webkit-border-bottom-right-radius: 1em; -moz-border-radius-topright: 1em; -moz-border-radius-bottomright: 1em; }
h2 { margin-top: 1.5em; margin-bottom: 0.5em; font-size: 1.5em; font-weight: bold; color: #202020; #785931; 202020; border-bottom: 1px solid #808080; #c19a67; }
h2:before, h2:after { content: '_'; visibility: hidden; /* extend underline */ }
h1, h2 { overflow: hidden /* clean up cruft and ensure bg/border don't encroach on floats */; }
h1:first-child, h2:first-child { margin-top: 0; }

/*** USEFUL CLASSES ***/

.faded { opacity: 0.33; }

/* Links durp */
a:link { font-weight: bold; text-decoration: none; color: #3173ce; }
a:visited { font-weight: bold; text-decoration: none; color: #435b7d; }
a:hover { color: #ce3131; }

/* Tag defaults; careful what goes here! */
img { vertical-align: middle; }

/* Forms */
form {}
input[type='text'].error { background-color: #f2c6d8; }

/* Tables */
table th, table td { padding: 0.25em; }
table th { font-weight: normal; color: #2457a0; }
table tr.header-row th { border-bottom: 1px solid #b4c7e6; background: #c6d8f2 url(${h.static_uri('local', 'images/layout/th-background.png')}) bottom left repeat-x; color: black; }

tr.altrow { background: #f0f0f0; }


/* Inline lists */
ul.inline { overflow: hidden /* new float context */; }
ul.inline li { float: left; }

/* Definition lists via floats */
dl { overflow: hidden /* new float context */; }
dt { float: left; clear: left; width: 11.5em; margin-right: 0.5em; text-align: right; color: #2457a0; }
dt:after { content: ':'; }
dd { padding-left: 12em /* float width, so hover highlight includes dt but lines wrap correctly */; }
dd:after { content: 'float clear'; display: block; clear: both; height: 0; visibility: hidden; }
dt, dd { line-height: 1.5; }
