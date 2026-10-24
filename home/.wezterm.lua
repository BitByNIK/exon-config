local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 19
config.enable_tab_bar = false
config.window_decorations = "RESIZE"

-- Just a touch of transparency so it feels native to macOS, 
-- but dark enough to prevent any eye strain.
config.window_background_opacity = 0.95
config.macos_window_background_blur = 20

-- The king of clean, cool-toned minimalism:
config.color_scheme = "Nord"

return config
