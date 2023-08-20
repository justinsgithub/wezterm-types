---@meta

--TODO: finish

---@alias PathBuf string

---@class Wezterm :ExecDomain
---@field GLOBAL any
---@field action Action
---@field action_callback any
---@field add_to_config_reload_watch_list any
---@field background_child_process any
---@field battery_info any
---@field column_width any
---@field config_dir any
---@field config_file any
---@field default_hyperlink_rules any
---@field default_ssh_domains any
---@field default_wsl_domains any
---@field emit any
---@field enumerate_ssh_hosts any
---@field executable_dir any
---@field font_with_fallback any
---@field format any
---@field get_builtin_color_schemes any
---@field glob any
---@field gradient_colors any
---@field has_action any
---@field home_dir any
---@field hostname any
---@field json_encode any
---@field json_parse any
---@field log_error any
---@field log_info any
---@field log_warn any
---@field nerdfonts any
---@field open_with any
---@field pad_left any
---@field pad_right any
---@field permute_any_mods any
---@field permute_any_or_no_mods any
---@field read_dir any
---@field reload_configuration any
---@field run_child_process any
---@field running_under_wsl any
---@field shell_join_args any
---@field shell_quote_arg any
---@field shell_split any
---@field sleep_ms any
---@field split_by_newlines any
---@field strftime any
---@field strftime_utc any
---@field target_triple any
---@field truncate_left any
---@field truncate_right any
---@field utf16_to_utf8 any
---@field version any
local Wezterm = {}

Wezterm.exec_domain("haha", function(cmd)
	print(cmd.ha)
end, "hahahahah")

---@param event_name WindowEvent | MultiplexerEvent | GuiEvent
---@param callback function(window: table, pane: table, ...) other params passed in depending on event
--TODO: more specific .on callback params
Wezterm.on = function(event_name, callback) end

---@param family string
---@param attributes? FontAttributes
---@return FontAttributes
Wezterm.font = function(family, attributes) end

---@return Config
-- only exists on newer versions, check for nil if not sure
-- config = {}
-- if wezterm.config_builder then
-- config = wezterm.config_builder()
-- end
Wezterm.config_builder = function() end

--TODO: specify "any" types where possible
