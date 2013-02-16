#!/usr/bin/python
"""
Gnome terminal profile based on molokai theme

Python code based on:
    https://github.com/sigurdga/gnome-terminal-colors-solarized
"""
import posixpath
from optparse import OptionParser
import gconf

COLOR01 = '#000000'
COLOR02 = '#E52221'
COLOR03 = '#A6E32D'
COLOR04 = '#FC951E'
COLOR05 = '#C48DFF'
COLOR06 = '#FA2573'
COLOR07 = '#67D9F0'
COLOR08 = '#F2F2F2'
COLOR09 = '#4C4C4C'
COLOR10 = '#FF0000'
COLOR11 = '#00FF00'
COLOR12 = '#FFFF00'
COLOR13 = '#4682B4'
COLOR14 = '#FF00FF'
COLOR15 = '#00FFFF'
COLOR16 = '#FFFFFF'


BD_COLOR = "#FBB5DF"
FG_COLOR = "#FFFFFF"
BG_COLOR = "#1C1C1C"


# 16 colors palette
PALETTE = [COLOR01, COLOR02, COLOR03, COLOR04, COLOR05, COLOR06, COLOR07, COLOR08,
           COLOR09, COLOR10, COLOR11, COLOR12, COLOR13, COLOR14, COLOR15, COLOR16]


def update_profile(profile):
    conf = {
        'visible_name': profile,
        'palette': ':'.join(PALETTE),
        'background_color': BG_COLOR,
        'foreground_color': FG_COLOR,
        'bold_color': BD_COLOR,
        'use_theme_colors': False,
        'use_theme_background': False,
        'bold_color_same_as_fg': False,
    }
    set_profile(profile, **conf)


def set_profile(profile, **conf):
    c = gconf.client_get_default()
    pp = lambda k: _gpath('profiles', profile, k)
    for k, v in conf.iteritems():
        _set_value(c, pp(k), v)

    # Add name to profile list
    profiles = c.get_list(_gpath('global/profile_list'), gconf.VALUE_STRING)
    if profile not in profiles:
        profiles.append(profile)
        c.set_list(_gpath('global/profile_list'), gconf.VALUE_STRING, profiles)
    # Set profile as default for new windows
    c.set_string(_gpath('global/default_profile'), profile)



def _gpath(*parts):
    return posixpath.join('/apps/gnome-terminal', *parts)


def _set_value(c, k, v):
    if isinstance(v, str):
        c.set_string(k, v)
    elif isinstance(v, bool):
        c.set_bool(k, v)
    elif isinstance(v, int):
        c.set_int(k, v)
    else:
        raise ValueError('Unknown type for key %s: %s', k, type(v))


def main():
    op = OptionParser()
    op.add_option('-p', '--profile', default='Molokai',
                  help='gnome-terminal profile name to set, default="%default"')
    opts, args = op.parse_args()

    update_profile(profile=opts.profile)

if __name__ == '__main__':
    main()
