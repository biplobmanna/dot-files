local wezterm = require 'wezterm'

local wsl_domains = wezterm.default_wsl_domains()

wezterm.on("gui-startup", function(cmd)
  local _, _, window = wezterm.mux.spawn_window(cmd or {})
  window:gui_window():toggle_fullscreen()
end)

for _, domain in ipairs(wsl_domains) do
  domain.default_cwd = "~"
end

return {
  adjust_window_size_when_changing_font_size = false,
  audible_bell = 'Disabled',
  
  -- OpenGL for GPU acceleration, Software for CPU
  front_end = "OpenGL",
  
  -----------------------------------------
  -- COLOUR SCHEMES
  --color_scheme = 'Catppuccin Frappe',
  --color_scheme = 'Fideloper',
  --color_scheme = '3024 (base16)',
  --color_scheme = '3024 Night',
  --color_scheme = 'Abernathy',
  color_scheme = 'Aci (Gogh)',
  color_scheme = 'Adventure',
  color_scheme = 'Adventure Time (Gogh)',
  color_scheme = 'Afterglow',
  color_scheme = 'Alien Blood (Gogh)',
  color_scheme = 'Andromeda',
  color_scheme = 'Apple System Colors',
  color_scheme = 'arcoiris',
  color_scheme = 'Argonaut',
  color_scheme = 'astromouse (terminal.sexy)',
  color_scheme = 'Atelier Forest (base16)',
  color_scheme = 'Banana Blueberry',
  color_scheme = 'Belge (terminal.sexy)',
  color_scheme = 'Blue Matrix',
  color_scheme = 'Breath Darker (Gogh)',
  color_scheme = 'Brewer (dark) (terminal.sexy)',
  color_scheme = 'Bright (base16)',
  color_scheme = 'Bright Lights',
  color_scheme = 'Builtin Dark',
  color_scheme = 'Builtin Tango Dark',
  color_scheme = 'Campbell (Gogh)',
  color_scheme = 'CGA',
  color_scheme = 'Catppuccin Mocha',
  color_scheme = 'Windows 10 (base16)',
  -----------------------------------------
  disable_default_key_bindings = true,
  exit_behavior = 'Close',
  font = wezterm.font {
    family = 'FiraCode Nerd Font Propo',
    --family = 'Cascadia Mono',
    --weight = 'Light',
    --stretch = 'Normal',
    --style = 'Normal',
    harfbuzz_features = { 'cv29', 'cv30', 'ss01', 'ss03', 'ss06', 'ss07', 'ss09' },
  },
  font_size = 12,
  force_reverse_video_cursor = true,
  hide_mouse_cursor_when_typing = true,
  hide_tab_bar_if_only_one_tab = true,
  keys = {
    { 
        key =     'P', 
        mods = 'CTRL|SHIFT', 
        action = wezterm.action.ActivateCommandPalette, 
    },
    { 
        key = 'C', 
        mods = 'CTRL|SHIFT', 
        action = wezterm.action.CopyTo 'Clipboard', 
    },
    { 
        key = '-', 
        mods = 'CTRL', 
        action = wezterm.action.DecreaseFontSize, 
    },
    { 
        key = '=', 
        mods = 'CTRL', 
        action = wezterm.action.IncreaseFontSize, 
    },
    { 
        mods = 'ALT', 
        key = 'Enter', 
        action = wezterm.action.Nop, 
    },
    { 
        key = 'V',
        mods = 'CTRL|SHIFT', 
        action = wezterm.action.PasteFrom 'Clipboard', 
    },
    { 
        key = '0',
        mods = 'CTRL', 
        action = wezterm.action.ResetFontSize, 
    },
    { 
        key = 'F11', 
        action = wezterm.action.ToggleFullScreen,
    },
	{
		key = [[\]],
		mods = "CTRL|ALT",
		action = wezterm.action({
			SplitHorizontal = { domain = "CurrentPaneDomain" },
		}),
	},
	{
		key = [[\]],
		mods = "CTRL",
		action = wezterm.action({
			SplitVertical = { domain = "CurrentPaneDomain" },
		}),
	},
	{
		key = "q",
		mods = "CTRL",
		action = wezterm.action({ CloseCurrentPane = { confirm = false } }),
	},
	{
		key = "h",
		mods = "CTRL|SHIFT",
		action = wezterm.action({ ActivatePaneDirection = "Left" }),
	},
	{
		key = "l",
		mods = "CTRL|SHIFT",
		action = wezterm.action({ ActivatePaneDirection = "Right" }),
	},
	{
		key = "k",
		mods = "CTRL|SHIFT",
		action = wezterm.action({ ActivatePaneDirection = "Up" }),
	},
	{
		key = "j",
		mods = "CTRL|SHIFT",
		action = wezterm.action({ ActivatePaneDirection = "Down" }),
	},
	{
		key = "h",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action({ AdjustPaneSize = { "Left", 1 } }),
	},
	{
		key = "l",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action({ AdjustPaneSize = { "Right", 1 } }),
	},
	{
		key = "k",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action({ AdjustPaneSize = { "Up", 1 } }),
	},
	{
		key = "j",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action({ AdjustPaneSize = { "Down", 1 } }),
	},
	{ -- browser-like bindings for tabbing
		key = "t",
		mods = "CTRL",
		action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }),
	},
	{
		key = "w",
		mods = "CTRL",
		action = wezterm.action({ CloseCurrentTab = { confirm = false } }),
	},
	{
		key = "Tab",
		mods = "CTRL",
		action = wezterm.action({ ActivateTabRelative = 1 }),
	},
	{
		key = "Tab",
		mods = "CTRL|SHIFT",
		action = wezterm.action({ ActivateTabRelative = -1 }),
	}, -- standard copy/paste bindings
	{
		key = "x",
		mods = "CTRL",
		action = "ActivateCopyMode",
	},
	{
		key = "v",
		mods = "CTRL|SHIFT",
		action = wezterm.action({ PasteFrom = "Clipboard" }),
	},
	{
		key = "c",
		mods = "CTRL|SHIFT",
		action = wezterm.action({ CopyTo = "ClipboardAndPrimarySelection" }),
	},
  },
  scrollback_lines = 10000,
  show_update_window = true,
  use_dead_keys = false,
  unicode_version = 15,
  macos_window_background_blur = 10,
  window_close_confirmation = 'NeverPrompt',
  window_background_opacity = 0.3,
  window_padding = {
    left = '0.6cell',
    right = '0.6cell',
    top = '0.6cell',
    bottom = '0.6cell',
  },
  wsl_domains = wsl_domains,
}
