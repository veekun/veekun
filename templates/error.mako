<%inherit file="/base.mako" />
<%def name="title()">${c.message}</%def>

<h1>Error: ${c.message}</h1>

% if c.code == 400:
<p>Either your browser, your router, a proxy somewhere, or something else (possibly you?) has asked my server for something it doesn't understand.</p>

<p>You can try refreshing, but if it doesn't work after a couple tries and you don't know why, it might be a bug on my end; please let me know.</p>

% elif c.code == 401:
<p>You have to log in to see this page.</p>

<p>Actually, I don't think you should be able to see this error at all...</p>

% elif c.code == 403:
<p>Sorry!  This is off-limits.</p>

% elif c.code == 404:
<p>Hm, I don't know what you're looking for.</p>

<p>A lot of links recently changed in the switch from the old veekun; I tried to keep everything working, but a few may have slipped through the cracks.  Try starting over from the main menu.</p>

% elif c.code == 500:
<p>Whoa!  Something has gone catastrophically wrong back here.</p>

<p>I've already gotten an email about it, and will be scrambling to fix it as soon as possible.  Sorry about that.</p>

% else:
<p>I don't know what to tell you.  Even my error page didn't expect this to happen.</p>

% endif
