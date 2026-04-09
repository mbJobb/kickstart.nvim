local wezterm = require("wezterm")
local config = wezterm.config_builder()
local mux = wezterm.mux

config.term = "wezterm"
config.default_prog = { "/bin/zsh", "-l" }

config.font = wezterm.font("JetBrains Mono")
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

config.color_scheme = "tokyonight_night"

config.audible_bell = "Disabled"
config.leader = { key = "Space", mods = "CTRL", timeout = 1000 }
config.keys = {
	{
		key = "Space",
		mods = "LEADER|CTRL",
		action = wezterm.action.ShowTabNavigator,
	},
}

return config
