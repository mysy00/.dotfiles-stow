local wezterm = require 'wezterm'
local act = wezterm.action

return {
  --font = wezterm.font 'FiraMono Nerd Font',
  default_prog = { '/usr/bin/fish' },
  color_scheme = "BlulocoDark",
  hide_tab_bar_if_only_one_tab = true,
  keys = {
    -- Tabs
    { key = '{', mods = 'CTRL|SHIFT', action=wezterm.action{ActivateTabRelative=-1} },
    { key = '}', mods = 'CTRL|SHIFT', action=wezterm.action{ActivateTabRelative=1} },
    
    -- Panes
    { key = 'b', mods = 'CTRL', action = act.RotatePanes 'CounterClockwise' },
    { key = 'n', mods = 'CTRL', action = act.RotatePanes 'Clockwise' },
    { key = '0', mods = 'CTRL', action = act.PaneSelect { mode = 'SwapWithActive' } },
    { key = '"', mods = 'CTRL|SHIFT', action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}} },
    { key = '%', mods = 'CTRL|SHIFT', action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}} },
    { key = 'w', mods = 'CTRL', action=wezterm.action{CloseCurrentPane={confirm=true}} },

    -- Copy/Paste
    { key="v",   mods="SHIFT|CTRL",     action="Paste"},
    { key="c",   mods="SHIFT|CTRL",     action="Copy"},

  },
}
