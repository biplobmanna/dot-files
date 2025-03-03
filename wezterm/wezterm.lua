local wezterm = require("wezterm")

-- imports from custom config files
local keys = require("keys")
local curated_color_schemes = require("color_scheme")
local fonts = require("fonts")

-- setup terminal config
local config = wezterm.config_builder()

-- hotkeys
config.keys = keys

-- color-scheme
config.color_scheme = curated_color_schemes.duckbones

-- fonts
config.font = fonts.caskaydiacove_nerd_font
config.font_size = 10

-- cursors
config.hide_mouse_cursor_when_typing= true
config.force_reverse_video_cursor = true

-- tab behaviour
config.hide_tab_bar_if_only_one_tab = true

-- window behaviour
config.adjust_window_size_when_changing_font_size = false

-- sounds
config.audible_bell = 'Disabled'

return config
