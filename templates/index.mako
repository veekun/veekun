<%inherit file="base.mako"/>

<%def name="title()">West of House</%def>
<%def name="title_in_page()">Home</%def>

<h1>there is a small mailbox here</h1>

<p>Greetings, weary traveler.  I'm <a href="${url('/about')}">Eevee</a> and this is some kind of website.  Whirlwind tour:</p>

<ul class="classic-list">
    <li>The main attraction is a <a href="${url('/dex')}">Pokédex</a>, if you hadn't noticed.  It's pretty great.</li>
    <li>I write some <a href="${url('/projects')}">other code</a>, too.  Everything I write is open-source.  There's a <a href="http://bugs.veekun.com/">bug tracker</a> and a <a href="http://git.veekun.com/">code browser</a>.  Feel free to <a href="http://bugs.veekun.com/projects/veekun-incoming/issues/new">tell me about bugs or feature suggestions</a>.</li>
    <li>I have an <a href="${url('/chat')}">IRC channel</a>, largely populated by nerds saying nerdy things.  You should stop by!</p>
</ul>

<%! import random %>
<img style="float: right;"
     src="${h.static_uri('local', 'images/engiveer{0}.png'.format('-manly' if random.random() < 0.1 else ''))}"
     alt="UNDER CONSTRUCTION LOL"
     title="I solve practical problems">

<p>If you remember the <a href="http://old.veekun.com/">old busted brown veekun</a>, you may notice a few things are missing.  The old site will be around until these are done:</p>

<ul class="classic-list">
    <li><a href="http://old.veekun.com/dex/calculators/iv">Stat calculator</a></li>
    <li><a href="http://old.veekun.com/dex/calculators/breeding_chains">Breeding chain calculator</a></li>
</ul>

<h1>Updates</h1>
<%include file="/front_page/updates.mako" />
