local wezterm = require('wezterm')
local act = wezterm.action

local keys = {
    { -- window fullscreen toggle (like a browser)
        key = 'F11',
        action = act.ToggleFullScreen,
    },
    { -- split into a vertical pane with CTRL + \
        mods = 'CTRL',
        key = [[\]],
        action = act({
            SplitVertical = { domain = "CurrentPaneDomain" },
        }),
    },
    { -- split into a horizontal pane with CTRL + SHIFT + |
        mods = 'CTRL|SHIFT',
        key = [[|]],
        action = act({
            SplitHorizontal = { domain = "CurrentPaneDomain" },
        }),
    },
    { -- activate the left panel
        mods = 'CTRL|SHIFT',
        key = 'h',
        action = act({ ActivatePaneDirection = "Left" }),
    },
    { -- activate the right panel 
        mods = 'CTRL|SHIFT',
        key = 'l',
        action = act({ ActivatePaneDirection = "Right" }),
    },
    { -- activate the top panel
        mods = 'CTRL|SHIFT',
        key = 'j',
        action = act({ ActivatePaneDirection = "Up" }),
    },
    { -- activate the bottom panel
        mods = 'CTRL|SHIFT',
        key = 'k',
        action = act({ ActivatePaneDirection = "Down" }),
    },
    { -- adjust pane size left
        mods = 'CTRL|SHIFT|ALT',
        key = 'h',
        action = act({ AdjustPaneSize = { "Left", 1 } }),
    },
    { -- adjust pane size right
        mods = 'CTRL|SHIFT|ALT',
        key = 'l',
        action = act({ AdjustPaneSize = { "Right", 1 } }),
    },
    { -- adjust pane size top
        mods = 'CTRL|SHIFT|ALT',
        key = 'j',
        action = act({ AdjustPaneSize = { "Up", 1 } }),
    },
    { -- adjust pane size bottom
        mods = 'CTRL|SHIFT|ALT',
        key = 'k',
        action = act({ AdjustPaneSize = { 'Down', 1 } }),
    },
    { -- close current pane
        mods = 'CTRL',
        key = 'q',
        action = act({ CloseCurrentPane = { confirm = false } }),
    },
    --{ -- spawn a tab with the current domain
    --    mods = 'CTRL',
    --    key = 't',
    --    action = act({ SpawnTab = "CurrentPaneDomain" }),
    --},
    { -- close current tab
        mods = 'CTRL',
        key = 'w',
        action = act({ CloseCurrentTab = { confirm = false } }),
    },
    { -- activate next relative tab
        mods = 'CTRL',
        key = 'Tab',
        action = act({ ActivateTabRelative = 1 }),
    },
    { -- activate previous relative tab
        mods = 'CTRL|SHIFT',
        key = 'Tab',
        action = act({ ActivateTabRelative = -1 }),
    },
    { -- copy text if anything is selected, else send CTRL+C to terminal
        mods = 'CTRL',
        key = 'c',
        action = wezterm.action_callback(function(window, pane)
          local has_selection = window:get_selection_text_for_pane(pane) ~= ''
          if has_selection then
            window:perform_action(act.CopyTo 'ClipboardAndPrimarySelection', pane)
            window:perform_action(act.ClearSelection, pane)
          else
            window:perform_action(act.SendKey { key = 'c', mods = 'CTRL' }, pane)
          end
        end),
    },
}

return keys
