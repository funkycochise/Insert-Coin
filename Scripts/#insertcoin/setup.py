import curses
import configparser
import textwrap
import os
import subprocess

# ---------- BANNER ----------
BANNER = [
" ██▓███▄    █  ██████▓█████ ██▀███ ▄▄▄█████▓    ▄████▄  ▒█████  ██▓███▄    █",
"▓██▒██ ▀█   █▒██    ▒▓█   ▀▓██ ▒ ██▓  ██▒ ▓▒   ▒██▀ ▀█ ▒██▒  ██▓██▒██ ▀█   █",
"▒██▓██  ▀█ ██░ ▓██▄  ▒███  ▓██ ░▄█ ▒ ▓██░ ▒░   ▒▓█    ▄▒██░  ██▒██▓██  ▀█ ██▒",
"░██▓██▒  ▐▌██▒ ▒   ██▒▓█  ▄▒██▀▀█▄ ░ ▓██▓ ░    ▒▓▓▄ ▄██▒██   ██░██▓██▒  ▐▌██▒",
"░██▒██░   ▓██▒██████▒░▒████░██▓ ▒██▒ ▒██▒ ░    ▒ ▓███▀ ░ ████▓▒░██▒██░   ▓██░",
"░▓ ░ ▒░   ▒ ▒▒ ▒▓▒ ▒ ░░ ▒░ ░ ▒▓ ░▒▓░ ▒ ░░      ░ ░▒ ▒  ░ ▒░▒░▒░░▓ ░ ▒░   ▒ ▒ ",
" ▒ ░ ░░   ░ ▒░ ░▒  ░ ░░ ░  ░ ░▒ ░ ▒░   ░         ░  ▒    ░ ▒ ▒░ ▒ ░ ░░   ░ ▒░",
" ▒ ░  ░   ░ ░░  ░  ░    ░    ░░   ░  ░         ░       ░ ░ ░ ▒  ▒ ░  ░   ░ ░ ",
" ░          ░      ░    ░  ░  ░                ░ ░         ░ ░  ░          ░ ",
"                                               ░                             ",
"    "
]

# ---------- FILES ----------
INI_FILE = "setup.ini"
IGNORE_SECTIONS = ["setup", "reserved"]

RUN_CMD = ["bash", "/media/fat/Scripts/#insertcoin/run.sh"]

# ---------- TOOLTIP ----------
MAIN_TOOLTIPS = {
    "Run":   "Run the script using current configuration",
    "Setup": "Configure options and features",
    "Save":  "Save current configuration to setup.ini",
    "Reset": "Restore default configuration",
    "Exit":  "Exit without running"
}

# ---------- DEFAULT CONFIG ----------
DEFAULT_CONFIG = {
    "update": {"main_mister": "0","mame_rom": "0","gnw_rom": "0","additional_res": "0","console_core": "0","dualsdram": "0"},
    "console": {"psx": "0","s32x": "0","saturn": "0","sgb": "0","neogeo": "0","n64": "0","jaguar": "0","cdi": "0","pce": "0","nes": "0","snes": "0"},
    "clean": {"console_mgl": "0","obsolete_core": "0","remove_other": "0"},
    "folder": {"essential": "1","rootfolder": "0","show_system": "1","show_genre": "1","manufacturer_subfolder": "0"}
}

# ---------- INI FUNCTIONS ----------
def ensure_ini(filename, default_config):
    if not os.path.exists(filename):
        parser = configparser.ConfigParser()
        for sec, opts in default_config.items():
            parser[sec] = opts
        with open(filename, "w", encoding="utf-8") as f:
            parser.write(f)

ensure_ini(INI_FILE, DEFAULT_CONFIG)

parser = configparser.ConfigParser()
parser.optionxform = str
parser.read(INI_FILE, encoding="utf-8")
sections = [s for s in parser.sections() if s.lower() not in IGNORE_SECTIONS]
config = {sec: dict(parser[sec]) for sec in sections}

def save_config():
    p = configparser.ConfigParser()
    for sec, opts in config.items():
        p[sec] = opts
    with open(INI_FILE, "w", encoding="utf-8") as f:
        p.write(f)

def reset_config():
    global config
    config = {k: v.copy() for k, v in DEFAULT_CONFIG.items() if k in sections}

# ---------- DRAW TOOLTIP ----------
def draw_tooltip(stdscr, text):
    if not text:
        return
    h, w = stdscr.getmaxyx()
    lines = textwrap.wrap(text, w - 2)
    y = h - len(lines) - 1
    stdscr.hline(y, 0, curses.ACS_HLINE, w)
    for i, line in enumerate(lines):
        stdscr.addstr(y + 1 + i, 1, line, curses.color_pair(1))

# ---------- RUN SCRIPT ----------
def do_run():
    curses.endwin()
    process = subprocess.Popen(
        ["stdbuf", "-o0", "-e0"] + RUN_CMD,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        text=True
    )
    for line in process.stdout:
        print(line, end='', flush=True)
    process.wait()
    input("\nPress Enter to continue")

# ---------- MAIN ----------
def main(stdscr):
    curses.curs_set(0)
    stdscr.keypad(True)
    curses.start_color()
    curses.init_pair(1, curses.COLOR_CYAN, curses.COLOR_BLACK)
    curses.init_pair(2, curses.COLOR_CYAN, curses.COLOR_BLACK)
    curses.init_pair(3, curses.COLOR_RED, curses.COLOR_BLACK)

    menu = ["Run", "Setup", "Save", "Reset", "Exit"]
    current = 0

    countdown = 5
    autorun_active = True
    stdscr.timeout(1000)

    while True:
        stdscr.clear()

        # Banner
        for i, line in enumerate(BANNER):
            stdscr.addstr(i, 0, line, curses.color_pair(3))

        base = len(BANNER)
        stdscr.addstr(base, 0, "↑/↓ navigate, Enter select, Esc exit", curses.color_pair(1))

        # Menu items
        for i, item in enumerate(menu):
            style = curses.A_REVERSE if i == current else 0
            stdscr.addstr(base + 1 + i, 0,
                "> " + item if i == current else "  " + item,
                curses.color_pair(1) | style if i == current else curses.color_pair(2)
            )

        # Tooltip
        tooltip = MAIN_TOOLTIPS.get(menu[current], "")
        draw_tooltip(stdscr, tooltip)

        # Countdown for AutoRun
        h, _ = stdscr.getmaxyx()
        if menu[current] == "Run" and autorun_active:
            stdscr.addstr(h - 3, 0,
                f"AutoRun in {countdown} sec (change selection to cancel)",
                curses.color_pair(1)
            )

        stdscr.refresh()
        key = stdscr.getch()

        # --- Timeout ---
        if key == -1:
            if autorun_active and menu[current] == "Run":
                countdown -= 1
                if countdown <= 0:
                    do_run()
                    return
            continue

        # --- Any key cancels autorun ---
        autorun_active = False
        countdown = 5
        stdscr.timeout(-1)

        # --- Navigation / Selection ---
        if key == 27:
            break
        elif key == curses.KEY_UP:
            current = (current - 1) % len(menu)
        elif key == curses.KEY_DOWN:
            current = (current + 1) % len(menu)
        elif key in (10, 13, 32):
            sel = menu[current]
            if sel == "Exit":
                break
            elif sel == "Run":
                do_run()
                return
            elif sel == "Save":
                save_config()
            elif sel == "Reset":
                reset_config()
            elif sel == "Setup":
                # Ici tu peux rappeler run_setup_menu(stdscr) si tu l'as défini
                pass

        # --- Re-enable autorun si on revient sur Run ---
        if menu[current] == "Run":
            autorun_active = True
            stdscr.timeout(1000)

curses.wrapper(main)
