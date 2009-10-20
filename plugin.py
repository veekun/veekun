"""This module is loaded by Spline on startup, and its LocalPlugin class is
used instead of the default.
"""

from spline.lib.plugin import LocalPlugin as LocalPluginBase, PluginLink
from routes import url_for as url

class LocalPlugin(LocalPluginBase):
    def links(self):
        return [
            PluginLink(u'Home', url('/'))
        ]
