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
