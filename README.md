# wezterm-types

Wezterm (config) types for Lua Language Server

## Installation

For Neovim users, if you are using [`Lazy`](https://github.com/folke/lazy.nvim)
as a package manager, install this together with
[`lazydev`](https://github.com/folke/lazydev.nvim):

```lua
{
  'folke/lazydev.nvim',
  ft = 'lua',
  dependencies = {
    {'justinsgithub/wezterm-types', lazy = true},
  },
  opts = {
    library = {
      {path = 'wezterm-types', mods = {'wezterm'}},
    },
  },
}
```

## Usage

After installing the types, add the type annotation when requiring wezterm in your configuration:

```lua
local wezterm = require("wezterm") --[[@as Wezterm]]

local config = wezterm.config_builder()

-- Your configuration here with full type support
config.window_decorations = "RESIZE | MACOS_FORCE_DISABLE_SHADOW"

return config
```

This annotation enables the Lua Language Server to provide proper type checking and autocompletion for WezTerm configuration options.
