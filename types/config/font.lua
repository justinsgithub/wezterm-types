---@meta

---@alias FontWeight "Thin" | "ExtraLight" | "Light" | "DemiLight" | "Book" | "Regular" | "Medium" | "DemiBold" | "Bold" | "ExtraBold" | "Black" | "ExtraBlack"
---@alias FontStretch "UltraCondensed" | "ExtraCondensed" | "Condensed" | "SemiCondensed" | "Normal" | "SemiExpanded" | "Expanded" | "ExtraExpanded" | "UltraExpanded"
---@alias FontStyle "Normal" | "Italic" | "Oblique"
---@alias FreeTypeLoadTarget "Normal" | "Light" | "Mono" | "HorizontalLcd" | "VerticalLcd"
---@alias FreeTypeLoadFlags "DEFAUlT" | "NO_HINTING" | "NO_BITMAP" | "FORCE_AUTOHINT" | "MONOCHROME" | "NO_AUTOHINT"

--TODO: = add harfbuzz_features enum

---@class FontAttributes
---@field is_fallback boolean
---@field is_synthetic boolean
---@field harfbuzz_features string[]
---@field assume_emoji_presentation boolean
---@field scale number
local FontAttributes = {
	-- The font family name
	family = "JetBrains Mono",
	---@type FontWeight
	-- Whether the font should be a bold variant
	weight = "Regular",
	---@type FontStretch
	stretch = "Normal",
	---@type FontStyle
	-- Whether the font should be an italic variant
	style = "Normal",
	---@type FreeTypeLoadTarget
	freetype_load_target = "Normal",
	---@type FreeTypeLoadTarget
	freetype_render_target = "Normal",
	---@type FreeTypeLoadFlags
	-- you can combine the flags like 'NO_HINTING|MONOCHROME' -- probably would not want to
	freetype_load_flags = "DEFAUlT",
}
