import json
import os

theme = "moonqueen"

with open("palette.json", "r") as f:
    raw_data = json.load(f)

c = {str(k).strip(): str(v).strip() for k, v in raw_data.items()}

bare = {k: v.lstrip('#') for k, v in c.items()}

targets = {
    "alacritty": {
        "path": f"extras/alacritty/{theme}.toml",
        "template": f"""
# Moon Queen for Alacritty
# Author: sailorfe
# Upstream: https://codeberg.org/sailorfe/moonqueen.nvim/src/branch/main/extras/alacritty/moonqueen.toml

[colors.primary]
background = "{c['base']}"
foreground = "{c['text']}"

[colors.normal]
black = "{c['surface']}"
red   = "{c['mars']}"
green = "{c['jupiter']}"
yellow = "{c['venus']}"
blue  = "{c['mercury']}"
magenta  = "{c['saturn']}"
cyan  = "{c['moon']}"
white = "{c['text']}"

[colors.bright]
black = "{c['overlay']}"
red   = "{c['kasei']}"
green = "{c['mokusei']}"
yellow = "{c['kinsei']}"
blue  = "{c['suisei']}"
magenta  = "{c['dosei']}"
cyan  = "{c['tsuki']}"
white = "{c['light']}"
"""
    },
    "foot": {
        "path": f"extras/foot/{theme}.ini",
        "template": f"""
# -*- moonqueen -*-

[colors]
foreground={bare['text']}
background={bare['base']}
selection-background={bare['moon']}
selection-foreground={bare['base']}
urls={bare['mercury']}
flash={bare['moon']}

regular0={bare['surface']}
regular1={bare['mars']}
regular2={bare['jupiter']}
regular3={bare['venus']}
regular4={bare['mercury']}
regular5={bare['saturn']}
regular6={bare['moon']}
regular7={bare['text']}

bright0={bare['overlay']}
bright1={bare['kasei']}
bright2={bare['mokusei']}
bright3={bare['kinsei']}
bright4={bare['suisei']}
bright5={bare['dosei']}
bright6={bare['tsuki']}
bright7={bare['light']}
"""
    },
    "json": {
            "path": f"extras/{theme}.json",
            "template": f"""
{{
    "background": "{c['base']}",
    "foreground": "{c['text']}",
    "black": "{c['surface']}",
    "red": "{c['mars']}",
    "green": "{c['jupiter']}",
    "yellow": "{c['venus']}",
    "blue": "{c['mercury']}",
    "magenta": "{c['saturn']}",
    "cyan": "{c['moon']}",
    "white": "{c['text']}",
    "brightBlack": "{c['overlay']}",
    "brightRed": "{c['kasei']}",
    "brightGreen": "{c['mokusei']}",
    "brightYellow": "{c['kinsei']}",
    "brightBlue": "{c['suisei']}",
    "brightMagenta": "{c['dosei']}",
    "brightCyan": "{c['tsuki']}",
    "brightWhite": "{c['light']}"
}}
"""
    },
    "termux": {
            "path": f"extras/termux/{theme}.properties",
            "template": f"""
# Moon Queen for Termux
# Author: sailorfe
# Upstream: https://codeberg.org/sailorfe/moonqueen.nvim/src/branch/main/extras/termux/moonqueen.properties

background: {c['base']}
foreground: {c['text']}

color0: {c['surface']}
color1: {c['mars']}
color2: {c['jupiter']}
color3: {c['venus']}
color4: {c['mercury']}
color5: {c['saturn']}
color6: {c['moon']}
color7: {c['text']}

color8: {c['overlay']}
color9: {c['kasei']}
color10: {c['mokusei']}
color11: {c['kinsei']}
color12: {c['suisei']}
color13: {c['dosei']}
color14: {c['tsuki']}
color15: {c['light']}
"""
    },
    "tty": {
            "path": f"extras/tty/{theme}-colors.conf",
            "template": f"""
# -*- moonqueen tty colors -*-

if [ "$TERM" = "linux" ]; then
    echo -en "\\x1b]P0{bare['base']}"
    echo -en "\\x1b]P1{bare['mars']}"
    echo -en "\\x1b]P2{bare['jupiter']}"
    echo -en "\\x1b]P3{bare['venus']}"
    echo -en "\\x1b]P4{bare['mercury']}"
    echo -en "\\x1b]P5{bare['saturn']}"
    echo -en "\\x1b]P6{bare['moon']}"
    echo -en "\\x1b]P7{bare['light']}"
    echo -en "\\x1b]P8{bare['overlay']}"
    echo -en "\\x1b]P9{bare['kasei']}"
    echo -en "\\x1b]PA{bare['mokusei']}"
    echo -en "\\x1b]PB{bare['kinsei']}"
    echo -en "\\x1b]PC{bare['suisei']}"
    echo -en "\\x1b]PD{bare['dosei']}"
    echo -en "\\x1b]PE{bare['tsuki']}"
    echo -en "\\x1b]PF{bare['text']}"
    clear
fi
"""
    },
}

for app, data in targets.items():
    full_path = os.path.expanduser(data["path"])
    os.makedirs(os.path.dirname(full_path), exist_ok=True)
    with open(full_path, "w") as f:
        f.write(data["template"].strip())
    print(f"updated {app}")
