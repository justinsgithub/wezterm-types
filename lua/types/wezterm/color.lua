---@meta

--TODO: finish

---@alias StrNum string|number

---@alias PaletteDict table<string, Palette>

---@class ImageExtractorParams
---@field fuzziness? number
---@field num_colors? number
---@field max_width? number
---@field max_height? number
---@field min_brightness? number
---@field max_brightness? number
---@field threshold? number
---@field min_contrast? number

-- The `wezterm.color` module exposes functions that work with colors
---@class Wezterm.Color
-- Parses the passed color and returns a Color object.
-- Color objects evaluate as strings but have a number of methods
-- that allow transforming and comparing colors
---@field parse fun(color: string): Color?
---@field extract_colors_from_image fun(filename: string, params: ImageExtractorParams?)
---@field from_hsla fun(h: StrNum, s: StrNum, l: StrNum, a: StrNum): Wezterm.Color
---@field get_builtin_schemes fun(): PaletteDict
---@field get_default_colors fun(): Palette
---@field gradient fun(gradient: Gradient, num_colors: number): Color[]
---@field load_base16_scheme fun(file_name: string): Palette,ColorSchemeMetaData
---@field load_scheme fun(file_name: string): Palette,ColorSchemeMetaData
---@field load_terminal_sexy_scheme fun(file_name: string): Palette,ColorSchemeMetaData
---@field load_terminal_sexy_scheme fun(colors: Palette, metadata: ColorSchemeMetaData, file_name: string)
