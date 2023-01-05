#       _   _ _
#  __ _| |_(_) | ___
# / _` | __| | |/ _ \
# | (_| | |_| | |  __/
# \__, |\__|_|_|\___|
#    |_|
#
# A full-featured, hackable tiling window manager
# written and configured in Python


from typing import List
from libqtile import bar, layout, widget
from libqtile.backend.base import Window
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal

# Props

super = "mod4"
alt = "mod1"
terminal = guess_terminal()

colors = {
    "dracula": {
        "arch":             "#0f94d2",
        "pink":             "#ad69af",
        "decade":           "#c678dd",
        "indigo":           "#6144e6",
        "indigo-light":     "#694bff",
        "green":            "#50fa7b",
        "black":            "#000000",
        "red":              "#ff5555",
        "orange":           "#ea1c25",
        "yellow":           "#f1fa8c",
        "magenta":          "#ff79c6",
        "cyan":             "#8be9fd",
        "white":            "#bfbfbf",
        "gray":             "#1d2330",
        "code":             "#1d2021",
        "gray-blue":        "#a9a1e1",
    },
}

cs = {
    "arch": chr(int(0xf303)),
    "linux": chr(int(0xe712)),
    "javascript": chr(int(0xe781)),
    "git": chr(int(0xf7a1)),
    "python": chr(int(0xe606)),
    "c": chr(int(0xe61e)),
    "markdown": chr(int(0xe73e)),
    "sass": chr(int(0xe603)),
    "stackoverflow": chr(int(0xe710)),
    "haskell": chr(int(0xe777)),

}
Egyption_Hieroglyph = ["𓂀", "𓃁", "𓈗", '𓃵', "𓂧", '𓄿', "𓅓", "𓆃"]
c_s = [cs[l] for l in ("c","javascript","python","haskell","sass","git","markdown","stackoverflow")]


# Bindings

keys = [
    # Switch between windows
    Key([super], "h", lazy.layout.left(), desc="Move focus to left"),
    Key([super], "l", lazy.layout.right(), desc="Move focus to right"),
    Key([super], "j", lazy.layout.down(), desc="Move focus down"),
    Key([super], "k", lazy.layout.up(), desc="Move focus up"),
    Key([alt], "Tab", lazy.layout.next(),
        desc="Move window focus to other window"),

    # Move windows
    Key([super, "shift"], "h", lazy.layout.shuffle_left(),
        desc="Move window to the left"),
    Key([super, "shift"], "l", lazy.layout.shuffle_right(),
        desc="Move window to the right"),
    Key([super, "shift"], "j", lazy.layout.shuffle_down(),
        desc="Move window down"),
    Key([super, "shift"], "k", lazy.layout.shuffle_up(), desc="Move window up"),

    # Grow windows
    Key([super, "control"], "h", lazy.layout.grow_left(),
        desc="Grow window to the left"),
    Key([super, "control"], "l", lazy.layout.grow_right(),
        desc="Grow window to the right"),
    Key([super, "control"], "j", lazy.layout.grow_down(),
        desc="Grow window down"),
    Key([super, "control"], "k", lazy.layout.grow_up(), desc="Grow window up"),
    Key([super], "n", lazy.layout.normalize(), desc="Reset all window sizes"),

    # Stack.
    Key([super, "shift"], "Return", lazy.layout.toggle_split(),
        desc="Toggle between split and unsplit sides of stack"),
    Key([super], "Return", lazy.spawn(terminal), desc="Launch terminal"),

    # Layout
    Key([super], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([super, "shift"], "f", lazy.window.toggle_floating(),
        desc="Toggle Floating Layout"),


    # Qtile
    Key([super, "control"], "r", lazy.restart(), desc="Restart Qtile"),
    Key([super, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),


    # Window
    Key([super], "w", lazy.window.kill(), desc="Kill focused window"),
    Key([super], "f", lazy.window.toggle_fullscreen(), desc="Toggle Fullscreen"),

]

# Groups

groups = [Group(n) for n in c_s.copy()]

for i, n in enumerate(groups):
    keys.extend([
        Key([super], str(i+1), lazy.group[n.name].toscreen(),
            desc="Switch to group {}".format(n.name)),

        Key([super, "shift"], str(i+1), lazy.window.togroup(n.name, switch_group=True),
            desc="Switch to & move focused window to group {}".format(n.name)),
    ])


# Widgets

widget_defaults = dict(
    font='mononoki Nerd Font Bold',
    fontsize=14,
    padding=3,
)
extension_defaults = widget_defaults.copy()

groupBoxDecadeTheme = {
    "active": colors["dracula"]["indigo-light"],
    "inactive": colors["dracula"]["gray-blue"],
    "background": colors["dracula"]["code"],
    "font": "mononoki Nerd Font Bold",
    "fontsize": 32,
    "highlight_method": "line",
    "highlight_color": colors["dracula"]["code"],
    "this_current_screen_border": colors["dracula"]["red"],
    "borderwidth": 2.2,
}

sepTheme = {
    "linewidth": 3,
    "size_percent": 100,
    "foreground": colors["dracula"]["red"],
}

textBoxTheme = {
    "background": colors["dracula"]["code"],
    "foreground": colors["dracula"]["arch"],
    "fontsize": 24,
    "fmt": "{} ",
}

decade_bar_widgets = [
    widget.TextBox(text=chr(int(0xf303)), **textBoxTheme),
    widget.GroupBox(**groupBoxDecadeTheme),
    widget.Sep(**sepTheme),
    widget.WindowName(
        background=colors["dracula"]["indigo-light"],
        foreground=colors["dracula"]["black"],
    ),
    widget.Sep(**sepTheme),
    widget.Clock(
        format='%I:%M %p ',
        foreground=colors["dracula"]["gray-blue"],
    ),
    widget.Battery(
        format='<span color="#50fa7b">{char}</span>{percent:2.0%}',
        discharge_char='',
        charge_char='⚡️',
        notify_below=True,
        fontsize=16,
        foreground=colors["dracula"]["gray-blue"],
    ),
]


# Bar

decade_bar = {
    "widgets": decade_bar_widgets,
    "size": 26,
    "margin": [4, 0, 4, 0],
    "background": colors["dracula"]["gray"],
    "opacity": 1,
}

# Screens

screens = [
    Screen(bottom=bar.Bar(**decade_bar)),
    Screen(top=bar.Bar(**decade_bar)),
]


# Layout

layout_theme = {
    "border_focus": colors["dracula"]["pink"],
    "border_normal": colors["dracula"]["gray"],
    "margin": [0, 2, 0, 2],
    "border_width": 2,
}


layouts = [
    layout.Columns(
        **layout_theme,
        border_focus_stack=colors["dracula"]["green"],
        margin_on_single=[5, 10, 10, 10],
        border_on_single=True,
    ),
    layout.Max(),
]


floating_layout = layout.Floating(float_rules=[
    # Run the utility of `xprop` to see the wm class and name of an X client.
    *layout.Floating.default_float_rules,
    Match(wm_class='confirmreset'),  # gitk
    Match(wm_class='makebranch'),  # gitk
    Match(wm_class='maketag'),  # gitk
    Match(wm_class='ssh-askpass'),  # ssh-askpass
    Match(title='branchdialog'),  # gitk
    Match(title='pinentry'),  # GPG key password entry
],
    **layout_theme,
)


# Drag floating layouts.
mouse = [
    Drag([super], "Button1", lazy.window.set_position_floating(),
         start=lazy.window.get_position()),
    Drag([super], "Button3", lazy.window.set_size_floating(),
         start=lazy.window.get_size()),
    Click([super], "Button2", lazy.window.bring_to_front())
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: List
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False


auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True
auto_minimize = True


wmname = "qtile(LG3D)"
