# wezterm-types

Wezterm config types for Lua Language Server

## Installation

For Neovim users, you can use the following install methods:

<details>
<summary><a href="https://github.com/folke/lazy.nvim">lazy.nvim</a></summary>

Using `lazy.nvim` as a package manager, install this together with
[`lazydev`](https://github.com/folke/lazydev.nvim):

```lua
require('lazy').setup({
  spec = {
    {
      'folke/lazydev.nvim',
      ft = 'lua',
      dependencies = {
        { 'justinsgithub/wezterm-types', lazy = true },
      },
      opts = {
        library = {
          -- Other library configs...
          { path = 'wezterm-types', mods = { 'wezterm' } },
        },
      },
    },
  },
})
```

</details>

---

## Usage

After installing the types, add the type annotation when requiring wezterm in your configuration:

```lua
---@type Wezterm
local wezterm = require("wezterm")

---@type Config
local config = wezterm.config_builder()

-- Your configuration here with full type support
config.window_decorations = "RESIZE | MACOS_FORCE_DISABLE_SHADOW"

return config
```

This annotation enables the [Lua Language Server](https://luals.github.io/) to provide
proper type checking and autocompletion for WezTerm configuration options.
