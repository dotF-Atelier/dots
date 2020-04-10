#!/usr/bin/env python3

from gi.repository import Playerctl, GLib
from subprocess import Popen

player = Playerctl.Player()

def on_track_change(player, e):
    track_info = '{artist} - {title}'.format(artist=player.get_artist(), title=player.get_title())
    Popen(['notify-send', track_info])

player.on('metadata', on_track_change)

GLib.MainLoop().run()
