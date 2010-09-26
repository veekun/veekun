<%def name="format_timedelta(delta)">${ "{0:.02f}".format( delta.seconds + delta.microseconds / 1000000.0 ) }</%def>

<div id="footer-timer">
<%
    total_time = c.timer.total_time.seconds \
               + c.timer.total_time.microseconds / 1000000.0
    if total_time < 0.05:
        # Nearly instant!  Awesome.
        # Ninjask
        pokemon_id = 291
    elif total_time < 0.1:
        # Electrode
        pokemon_id = 101
    elif total_time < 0.25:
        # Jolteon
        pokemon_id = 135
    elif total_time < 0.5:
        # Scyther
        pokemon_id = 123
    elif total_time < 0.75:
        # Staraptor
        pokemon_id = 398
    elif total_time < 1.0:
        # Absol
        pokemon_id = 359
    elif total_time < 1.5:
        ### Now we're over one second.  Starting to get unacceptable.
        # Abomasnow
        pokemon_id = 460
    elif total_time < 2.5:
        # Aggron
        pokemon_id = 306
    elif total_time < 4.0:
        # Gastrodon
        pokemon_id = 423
    else:
        # Slowpoke.  :(
        pokemon_id = 79
%>
    <div id="footer-timer-pokemon">${h.pokedex.pokedex_img("/icons/{0}.png".format(pokemon_id))}</div>
    ${format_timedelta(c.timer.total_time)}s <br>
    ${c.timer.sql_queries} quer${ 'y' if c.timer.sql_queries == 1 else 'ies' }:
        ${format_timedelta(c.timer.sql_time)}s
</div>

<p>
    ©1999–2010 eevee/alex munroe (<a href="${url('/about')}">contact</a>, <a href="${url('/chat')}">chat</a>)
    • pokémon ©1995–2010 <a href="http://www.pokemon.com/">pokémon</a>,
        <a href="http://www.nintendo.com/">nintendo</a>,
        <a href="http://www.gamefreak.co.jp/">game freak</a>,
        <a href="http://www.creatures.co.jp/html/en/">creatures</a>
</p>
<p>
    many thanks to <a href="http://purplekecleon.deviantart.com/">purplekecleon</a>,
        <a href="http://turnipmints.mooo.com/~andrew/">magical</a>,
        and <a href="http://github.com/Zhorken">zhorken</a>
    • icons from <a href="http://p.yusukekamiyamane.com/">fugue set</a>
    • country flags from <a href="http://www.famfamfam.com/lab/icons/flags/">famfamfam</a>
</p>
<p>
    powered by <a href="http://bugs.veekun.com/projects/spline">spline</a>
    • <a href="http://bugs.veekun.com/projects/veekun/wiki/Documentation">get the source code</a>
    • <a href="http://bugs.veekun.com/">bug tracker</a>
</p>

% if config.get('spline.sql_debugging', False):
<table id="footer-query-log">
<%! import datetime %>\
% for query, data in c.timer.sql_query_log.iteritems():
<tbody>
    <tr>
        <td>×${len(data)}</td>
        <td>${format_timedelta(sum( (_['time'] for _ in data), datetime.timedelta() ))}s</td>
        <th>${query}</th>
    </tr>
    % for instance in data:
    <tr>
        <td></td> <td></td>
        <td>
            ${format_timedelta(instance['time'])}s: ${instance['caller']}<br>
            ${instance['parameters']}
        </td>
    </tr>
    % endfor
</tbody>
% endfor
</table>
% endif
