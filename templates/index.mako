<%inherit file="base.mako"/>

<%def name="title()">West of House</%def>
<%def name="title_in_page()">Home</%def>

<h1>there is a small pokédex here</h1>

<p>Hey, I am <a href="https://eev.ee/">Eevee</a> and this is veekun and it's a Pokédex.  You probably want to type into that box in the top right, or maybe just start <a href="${url('/dex')}">browsing</a>.</p>

<p>Other stuff of interest:</p>

<ul class="classic-list">
    <li>Enjoy my <a href="https://eev.ee/">personal site</a>, and those of the <a href="${url('/props')}">myriad other contributors</a>.</li>
    <li><a href="https://www.patreon.com/eevee">Toss some ₽ my way</a>, to support veekun development.</li>
    <li>Stop by the <a href="irc://veekun.com/veekun">IRC channel</a> (<a href="${url('/chat')}">instructions</a>) to chat with some cool nerds and complain when the site is broken.</li>
</ul>

## Only include this if the frontpage plugin is loaded!
% if 'frontpage' in config['spline.plugins']:
<div class="dex-column-container">
<div class="dex-column-2x">
<%include file="/front_page/updates.mako" />
</div>
<div class="dex-column">
<%include file="/front_page/extras.mako" />
</div>
</div>
% endif
