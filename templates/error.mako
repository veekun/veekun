<%inherit file="/base.mako" />
<%def name="title()">${c.message}</%def>

% if c.code == 400:
<h1>Bad Request</h1>

<p>Either your browser, your router, a proxy somewhere, or something else (possibly you?) has asked my server for something it doesn't understand.</p>

<p>You can try refreshing, but if it doesn't work after a couple tries and you don't know why, it might be a bug on my end; please let me know.</p>

% elif c.code == 401:
<h1>Unauthenticated</h1>

<p>You have to log in to see this page.</p>

<p>Actually, I don't think you should be able to see this error at all...</p>

% elif c.code == 403:
<div id="error-illustration"><img src="${h.static_uri('local', 'images/403.png')}"></div>

<h1>UHH WHAT ARE YOU DOING</h1>

<p>PLEASE STOP DOING THAT</p>

<p>IT IS MAKING ME VERY UNCOMFORTABLE</p>

<p>I NEED AN ADULT</p>

% elif c.code == 404:
<%! import random %>
<div id="error-illustration"><img src="${h.static_uri('local', 'images/404{0}.png'.format(random.choice(['a', 'b'])))}"></div>

<h1>I seem to have misplaced something</h1>

<p>Oh, I was holding it the whole time!</p>

<hr>

<p>If you came here via a link, I might have broken it when I upgraded veekun.  Sorry!  Try starting from the menu or Pokédex.</p>

% elif c.code == 500:
<div id="error-illustration"><img src="${h.static_uri('local', 'images/500.png')}"></div>

<h1>no look I've got this just give me a minute</h1>

<p>really</p>

<p>it's under control</p>

<p>(check back later)</p>

% else:
<p>I don't know what to tell you.  Even my error page didn't expect this to happen.</p>

% endif
