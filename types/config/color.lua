---@meta

---@class TabBarColor
-- The color of the background area for the tab
---@field bg_color string
-- The color of the text for the tab
---@field fg_color string
-- Specify whether you want "Half", "Normal" or "Bold" intensity for the
-- label shown for this tab.
-- The default is "Normal"
---@field intensity "Half" | "Normal" | "Bold"
-- Specify whether you want "None", "Single" or "Double" underline for
-- label shown for this tab.
-- The default is "None"
---@field underline "None" | "Single" | "Double"
-- Specify whether you want the text to be italic (true) or not (false)
-- for this tab.  The default is false.
---@field italic boolean
-- Specify whether you want the text to be rendered with strikethrough (true)
-- or not for this tab.  The default is false.
---@field strikethrough boolean

---@class TabBarColors
---@field background string The text color to use when the attributes are reset to default
---@field inactive_tab_edge string
---@field inactive_tab_edge_hover string

---@alias AnsiColors "Black" | "Maroon" | "Green" | "Olive" | "Navy" | "Purple" | "Teal" | "Silver" | "Grey" | "Red" | "Lime" | "Yellow" | "Blue" | "Fuchsia" | "Aqua" | "White"

---@alias AC "AnsiColor"

---@alias CO "Color"

---@alias ColorSpec table<AC, AnsiColors> | table<CO, string>

---@class Palette
---@field foreground string The text color to use when the attributes are reset to default
---@field background string  The background color to use when the attributes are reset to default
---@field cursor_fg string  The color of the cursor
---@field cursor_bg string  The color of the cursor
---@field cursor_border string  The color of the cursor
---@field selection_fg string  The color of selected text
---@field selection_bg string  The color of selected text
---@field ansi string[]  A list of 8 colors corresponding to the basic ANSI palette
---@field brights string[] A list of 8 colors corresponding to bright versions of the
---@field indexed { [number]: string } A map for setting arbitrary colors ranging from 16 to 256 in the color palette
---@field scrollbar_thumb string The color of the "thumb" of the scrollbar; the segment that represents the current viewable area
---@field split string The color of the split line between panes
---@field visual_bell string The color of the visual bell. If unspecified, the foreground color is used instead.
---@field compose_cursor string The color to use for the cursor when a dead key or leader state is active
---@field copy_mode_active_highlight_fg ColorSpec
---@field copy_mode_active_highlight_bg ColorSpec
---@field copy_mode_inactive_highlight_fg ColorSpec
---@field copy_mode_inactive_highlight_bg ColorSpec
---@field quick_select_label_fg ColorSpec
---@field quick_select_label_bg ColorSpec
---@field quick_select_match_fg ColorSpec
---@field quick_select_match_bg ColorSpec
local Palette = {
	---@class TabBar :TabBarColors
	--  Configure the color and styling for the tab bar
	tab_bar = {
		-- The color of the strip that goes along the top of the window
		-- (does not apply when fancy tab bar is in use)
		background = "#0b0022",

		---@type TabBarColor
		-- The active tab is the one that has focus in the window
		active_tab = {
			-- The color of the background area for the tab
			bg_color = "#2b2042",
			-- The color of the text for the tab
			fg_color = "#c0c0c0",

			-- Specify whether you want "Half", "Normal" or "Bold" intensity for the
			-- label shown for this tab.
			-- The default is "Normal"
			intensity = "Normal",

			-- Specify whether you want "None", "Single" or "Double" underline for
			-- label shown for this tab.
			-- The default is "None"
			underline = "None",

			-- Specify whether you want the text to be italic (true) or not (false)
			-- for this tab.  The default is false.
			italic = false,

			-- Specify whether you want the text to be rendered with strikethrough (true)
			-- or not for this tab.  The default is false.
			strikethrough = false,
		},

		---@type TabBarColor
		-- Inactive tabs are the tabs that do not have focus
		inactive_tab = {
			bg_color = "#1b1032",
			fg_color = "#808080",
		},

		---@type TabBarColor
		-- You can configure some alternate styling when the mouse pointer
		-- moves over inactive tabs
		inactive_tab_hover = {
			bg_color = "#3b3052",
			fg_color = "#909090",
			italic = true,
		},

		---@type TabBarColor
		-- The new tab button that let you create new tabs
		new_tab = {
			bg_color = "#1b1032",
			fg_color = "#808080",
		},

		---@type TabBarColor
		-- You can configure some alternate styling when the mouse pointer
		-- moves over the new tab button
		new_tab_hover = {
			bg_color = "#3b3052",
			fg_color = "#909090",
			italic = true,
		},
	},
}
