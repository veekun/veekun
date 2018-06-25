# encoding: utf8
"""This module is loaded by Spline on startup, and its LocalPlugin class is
used instead of the default.
"""
from routes import url_for as url

from spline.lib.plugin import LocalPlugin as LocalPluginBase, PluginLink

class LocalPlugin(LocalPluginBase):
    def links(self):
        return [
            PluginLink(u'veekun', url('/'), children=[
                PluginLink(u'', None, children=[
                    PluginLink(u'About + contact',  url('/about')),
                    PluginLink(u'Chat',             url('/chat')),
                    PluginLink(u'Credits',          url('/props')),
                    PluginLink(u'Link or embed veekun', url('/link')),
                    PluginLink(u'Pokédex history',  url('/dex/history')),
                ]),
            ]),
        ]

    def hooks(self):
        return []
