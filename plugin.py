# encoding: utf8
"""This module is loaded by Spline on startup, and its LocalPlugin class is
used instead of the default.
"""

from spline.lib import helpers as h
from spline.lib.plugin import LocalPlugin as LocalPluginBase, PluginLink, Priority
from routes import url_for as url

def kecchan_flash(action, *args, **kwargs):
    # hacktastic
    from pylons import session
    import re
    flashes = session.get(h._flash.session_key, [])
    if any(re.search('PurpleKecleon', unicode(_)) for _ in flashes):
        return

    h.flash(h.literal("""
        Hey, it's my girlfriend <a href="http://purplekecleon.deviantart.com/">PurpleKecleon</a>'s
        birthday today!  You should go wish her well...  maybe commission some art...
        <small>my cut is 10%...</small>
    """), icon='cake')

class LocalPlugin(LocalPluginBase):
    def links(self):
        return [
            PluginLink(u'veekun', url('/'), children=[
                PluginLink(u'Pokédex history', url('/dex/history')),
                PluginLink(u'Projects', url('/projects')),
            ]),
        ]

    def hooks(self):
        return [
            ('before_controller', Priority.NORMAL, kecchan_flash),
        ]
