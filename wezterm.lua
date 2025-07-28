---@module "types"

-- Pull in the wezterm API
---@type Wezterm
local wezterm = require("wezterm")

-- This will hold the configuration.
---@type Config
local config = wezterm.config_builder()

config.check_for_updates = false

config.launcher_alphabet = "1234567890abcdefghilmnopqrstuvwxyz"

config.font_size = 19
config.font = wezterm.font("FiraCode Nerd Font Mono", {})
config.anti_alias_custom_block_glyphs = true

config.harfbuzz_features = {
    "calt=1",
    "clig=1",
    "liga=1",
    "zero",
    -- "onum",
    -- "ss01",
    "ss02", -- `<=`, `>=`
    "ss03", -- `&`
    "ss04", -- `$`
    "ss05", -- `@`
    "ss06", -- `\\`
    "ss07", -- `=~`, `!~`
    "ss08", -- `==`, `===`, `!=`, `!==`
    "ss09", -- `>>=`, `<<=`, `||=`, `|=`
    -- "ss10",
    -- "cv01",
    -- "cv02",
    -- "cv03",
    -- "cv04",
    -- "cv05",
    -- "cv06",
    -- "cv07",
    -- "cv08",
    -- "cv09",
    -- "cv10",
    "cv11", -- numbers
    "cv12", -- numbers
    "cv13", -- numbers
    "cv14", -- numbers
    "cv15", -- `*`
    "cv16", -- `*`
    "cv17", -- `~`
    -- "cv18", -- `%`
    "cv19", -- `<=`
    "cv20", -- `<=`
    -- "cv21",
    -- "cv22",
    "cv23", -- `>=`
    "cv24", -- `/=`
    "cv25", -- `.-`
    "cv26", -- `:-`
    "cv27", -- `[]`
    "cv28", -- `{. .}`
    "cv29", -- `{}`
    "cv30", -- `|`
    "cv31", -- `()`
    "cv32", -- `.=`
}

config.audible_bell = "Disabled"
config.window_background_opacity = 0.9
config.kde_window_background_blur = true
config.scrollback_lines = 10000
config.exit_behavior = "Close"
config.animation_fps = 30
config.cursor_blink_rate = 500
config.cursor_blink_ease_in = "Linear"
config.cursor_blink_ease_out = "Linear"
config.default_cursor_style = "BlinkingBlock"

config.color_scheme = "Tokyo Night Storm (Gogh)"

config.enable_kitty_graphics = true
config.enable_scroll_bar = false
config.enable_wayland = true
config.hide_tab_bar_if_only_one_tab = true
config.mouse_wheel_scrolls_tabs = false
config.front_end = "WebGpu"
config.hide_mouse_cursor_when_typing = false

return config
