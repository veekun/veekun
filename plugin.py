# encoding: utf8
"""This module is loaded by Spline on startup, and its LocalPlugin class is
used instead of the default.
"""
from pylons import session, tmpl_context as c
from routes import url_for as url

from spline.lib.plugin import LocalPlugin as LocalPluginBase, PluginLink, Priority

def ie_warning_hook(*args, **kwargs):
    """Hook to show a warning to IE users, but only on the first request."""
    if not session.get('seen_ie_warning', False):
        session['seen_ie_warning'] = 1
        session.save()

class LocalPlugin(LocalPluginBase):
    def links(self):
        return [
            PluginLink(u'veekun', url('/'), children=[
                PluginLink(u'', None, children=[
                    PluginLink(u'About + contact',  url('/about')),
                    PluginLink(u'Chat',             url('/chat')),
                    PluginLink(u'Credits',          url('/props')),
                    PluginLink(u'Link or embed veekun', url('/link')),
                    PluginLink(u'Projects',         url('/projects')),
                    PluginLink(u'Pokédex history',  url('/dex/history')),
                ]),
            ]),
        ]

    def hooks(self):
        return [
            ('after_controller', Priority.NORMAL, ie_warning_hook),
        ]
