<%def name="format_timedelta(delta, prec=1)">${ "{0:.{1}f}".format(1e3*delta.seconds + 1e-3*delta.microseconds, prec) }ms</%def>
<%def name="plural(n, singular, plural)">${n} ${singular if n == 1 else plural}</%def>

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
    <div id="footer-timer-pokemon">
        ${h.pokedex.pokedex_img("pokemon/icons/{0}.png".format(pokemon_id))}
        % if c.timer.from_cache:
            ${h.pokedex.pokedex_img("pokemon/icons/{0}.png".format(132))}
        % endif
    </div>
    ${format_timedelta(c.timer.total_time, 0)} <br>
    ${plural(c.timer.sql_queries, 'query', 'queries')}:
        ${format_timedelta(c.timer.sql_time, 0)}
</div>

<p>
    ©1999 <a href="https://eev.ee/">eevee/lexy munroe</a>
    • pokémon ©1995 <a href="http://www.pokemon.com/">pokémon</a>,
        <a href="http://www.nintendo.com/">nintendo</a>,
        <a href="http://www.gamefreak.co.jp/">game freak</a>,
        <a href="http://www.creatures.co.jp/html/en/">creatures</a>
</p>
<p>
    many thanks to <a href="${url('/props')}">these amazing contributors</a>
    • icons from <a href="http://p.yusukekamiyamane.com/">fugue set</a>
    • country flags from <a href="http://www.famfamfam.com/lab/icons/flags/">famfamfam</a>
</p>
<p>
    <a href="https://github.com/veekun/">source code</a> • <a href="https://github.com/veekun/pokedex">data</a> • <a href="https://www.patreon.com/eevee">support ₽₽₽</a>
</p>

% if config.get('spline.sql_debugging', False):
<table id="footer-query-log">
<%! import datetime %>\
% for query, data in c.timer.sql_query_log.iteritems():
<tbody>
    <tr>
        <td>×${len(data)}</td>
        <td>${format_timedelta(sum( (x['time'] for x in data), datetime.timedelta() ))}<br>
            ${plural(sum(x['rowcount'] for x in data), 'row', 'rows')}</td>
        <th>
        % for line in query.splitlines():
            ${line}<br>
        % endfor
        </th>
    </tr>
    % for instance in data:
    <tr>
        <td></td> <td></td>
        <td>
            ${instance['caller']}:<br>
            % if instance['parameters']:
                ${instance['parameters']}<br>
            % endif
            ${format_timedelta(instance['time'])},
            ${plural(instance['rowcount'], 'row', 'rows')}
        </td>
    </tr>
    % endfor
</tbody>
% endfor
</table>
% endif
