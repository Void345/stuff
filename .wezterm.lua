-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.default_cursor_style = 'BlinkingBar'
config.use_fancy_tab_bar = false
config.color_scheme = 'builtin dark'
config.font = wezterm.font 'Comic Code Ligatures'
config.font_size = 10
-- config.window_background_opacity = 0.85

-- and finally, return the configuration to wezterm
return config
