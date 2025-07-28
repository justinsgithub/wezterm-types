---@module 'types'

---@type Wezterm
local wezterm = require("wezterm")

local act = wezterm.action

---@type Config
local config = {}

-- if wezterm.config_builder then
config = wezterm.config_builder()
-- end

config.leader = { key = "RightAlt", mods = "ALT" }

-- CTRL + SHIFT + ARROW = switch panes
local mykeys = {}

for i = 1, 8 do
    -- CTRL+ALT + number to activate that tab
    table.insert(mykeys, {
        key = tostring(i),
        mods = "LEADER",
        action = act({ ActivateTab = i - 1 }),
    })
end

-- wezterm.on('update-right-status', function(window, pane)
--   local leader = ''
--   if window:leader_is_active() then
--     leader = 'LEADER'
--   end
--   window:set_right_status(leader)
-- end)

table.insert(
    mykeys,
    { key = "n", mods = "LEADER", action = act({ SpawnTab = "CurrentPaneDomain" }) }
)

table.insert(mykeys, { key = "f", mods = "LEADER", action = "ToggleFullScreen" })

table.insert(mykeys, { key = "[", mods = "LEADER", action = act.MoveTabRelative(-1) })
table.insert(mykeys, { key = "]", mods = "LEADER", action = act.MoveTabRelative(1) })

table.insert(mykeys, {
    key = "H",
    mods = "LEADER",
    action = act({ SplitVertical = { domain = "CurrentPaneDomain" } }),
})
table.insert(mykeys, {
    key = "V",
    mods = "LEADER",
    action = act({ SplitHorizontal = { domain = "CurrentPaneDomain" } }),
})

table.insert(
    mykeys,
    { key = "h", mods = "LEADER", action = act({ ActivatePaneDirection = "Left" }) }
)
table.insert(
    mykeys,
    { key = "j", mods = "LEADER", action = act({ ActivatePaneDirection = "Down" }) }
)
table.insert(mykeys, { key = "k", mods = "LEADER", action = act({ ActivatePaneDirection = "Up" }) })
table.insert(
    mykeys,
    { key = "l", mods = "LEADER", action = act({ ActivatePaneDirection = "Right" }) }
)

table.insert(mykeys, { key = "h", mods = "CTRL|ALT", action = act.AdjustPaneSize({ "Left", 1 }) })
table.insert(mykeys, { key = "j", mods = "CTRL|ALT", action = act.AdjustPaneSize({ "Down", 1 }) })
table.insert(mykeys, { key = "k", mods = "CTRL|ALT", action = act.AdjustPaneSize({ "Up", 1 }) })
table.insert(mykeys, { key = "l", mods = "CTRL|ALT", action = act.AdjustPaneSize({ "Right", 1 }) })

table.insert(mykeys, { key = "c", mods = "LEADER", action = act.ActivateCopyMode })

table.insert(mykeys, { key = "q", mods = "LEADER", action = act.QuickSelect })

table.insert(
    mykeys,
    { key = "s", mods = "LEADER", action = act.Search({ CaseSensitiveString = "" }) }
)

config.font =
    wezterm.font("JetBrains Mono", { weight = "Medium", italic = false, stretch = "Normal" })

config.harfbuzz_features = {
    "calt=1",
    "clig=1",
    "liga=1",
    "zero",
    "onum",
    "ss01",
    "ss02",
    "ss03",
    "ss04",
    "ss05",
    "ss06",
    "ss07",
    "ss08",
    "ss09",
    "ss10",
    "cv01",
    "cv02",
    "cv03",
    "cv04",
    "cv05",
    "cv06",
    "cv07",
    "cv08",
    "cv09",
    "cv10",
    "cv11",
    "cv12",
    "cv13",
    "cv14",
    "cv15",
    "cv16",
    "cv17",
    "cv18",
    "cv19",
    "cv20",
    "cv21",
    "cv22",
    "cv23",
    "cv24",
    "cv25",
    "cv26",
    "cv27",
    "cv28",
    "cv29",
    "cv30",
    "cv31",
}
config.audible_bell = "Disabled"
config.window_background_opacity = 0.90
config.scrollback_lines = 10000
config.color_scheme = "Monokai Vivid"
config.exit_behavior = "Close"
config.keys = mykeys
config.animation_fps = 1
config.cursor_blink_ease_in = "Constant"
config.cursor_blink_ease_out = "Constant"
config.default_cursor_style = "BlinkingBlock"

-- Neovim zenmode
wezterm.on("user-var-changed", function(window, pane, name, value)
    local overrides = window:get_config_overrides() or {}
    if name == "ZEN_MODE" then
        local incremental = value:find("+")
        local number_value = tonumber(value)
        if incremental ~= nil then
            while number_value > 0 do
                window:perform_action(wezterm.action.IncreaseFontSize, pane)
                number_value = number_value - 1
            end
            overrides.enable_tab_bar = false
        elseif number_value < 0 then
            window:perform_action(wezterm.action.ResetFontSize, pane)
            overrides.font_size = nil
            overrides.enable_tab_bar = true
        else
            overrides.font_size = number_value
            overrides.enable_tab_bar = false
        end
    end
    window:set_config_overrides(overrides)
end)

return config

-- TODO: look into other features for fonts https://docs.microsoft.com/en-us/typography/opentype/spec/featurelist
-- config.font = wezterm.font 'Fira Code Nerd Font'
-- config.font = wezterm.font('Fira Code Nerd Font', { weight = 'Medium', italic = false, stretch= 'Normal' })
-- config.font = wezterm.font('Fira Code Nerd Font Propo', { weight = 'Medium', italic = false, stretch= 'Normal' })

-- The filled in variant of the < symbol
-- local SOLID_LEFT_ARROW = utf8.char(0xe0b2)

-- The filled in variant of the > symbol
-- local SOLID_RIGHT_ARROW = utf8.char(0xe0b0)

-- wezterm.on( 'format-tab-title', function(tab, tabs, panes, config, hover, max_width)
--   local edge_background = '#0b0022'
--   local background = '#1b1032'
--   local foreground = '#808080'

--   if tab.is_active then
--     background = '#2b2042'
--     foreground = '#c0c0c0'
--   elseif hover then
--     background = '#3b3052'
--     foreground = '#909090'
--   end

--   local edge_foreground = background

-- -- ensure that the titles fit in the available space
-- -- and that we have room for the edges.
-- local title = wezterm.truncate_right(tab.active_pane.title, max_width - 2)
-- local title = wezterm.truncate_right(tab.active_pane.title, max_width - 2)
-- local t = wezterm.truncate_right(tab.active_pane.pane_id, max_width - 2)

--   return {
--     { Background = { Color = edge_background } },
--     { Foreground = { Color = edge_foreground } },
--     { Text = SOLID_LEFT_ARROW },
--     { Background = { Color = background } },
--     { Foreground = { Color = foreground } },
--     { Text = title },
--     { Background = { Color = edge_background } },
--     { Foreground = { Color = edge_foreground } },
--     { Text = SOLID_RIGHT_ARROW },
--   }
-- end
-- )
