<div align="center">

# wezterm-types

[Wezterm](https://github.com/wezterm/wezterm) config types for [Lua Language Server](https://luals.github.io/)

</div>

- Example in [Neovim](https://github.com/neovim/neovim)

![Neovim Demonstration](https://github.com/user-attachments/assets/c9082e54-39ad-4c7d-8d81-ddf0b1fb1fc7)

---

## Table of Contents

1. [Installation](#installation)
    1. [Neovim](#neovim)
2. [Usage](#usage)
3. [Credits](#credits)

---

## Installation

### Neovim

For [Neovim](https://github.com/neovim/neovim) users, we recommend the following install method.

Using [`lazy.nvim`](https://github.com/folke/lazy.nvim) as a package manager, install this together with
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

**NOTE If you assign a custom `name` field for the plugin:**

```lua
{
  {
    'folke/lazydev.nvim',
    ft = 'lua',
    dependencies = {
      {
        'justinsgithub/wezterm-types',
        name = '<my_custom_name>', -- CUSTOM DIRECTORY NAME
        lazy = true,
      },
    },
    opts = {
      library = {
        -- Other library configs...

        -- MAKE SURE TO MATCH THE PLUGIN DIRECTORY'S NAME
        { path = '<my_custom_name>', mods = { 'wezterm' } },
      },
    },
  },
}
```

---

## Usage

After installing the types, add the type annotations to `wezterm` and `config` respectively
when requiring wezterm in your configuration:

```lua
---Import this module using annotations
---@module "wezterm.types"

---@type Wezterm
local wezterm = require("wezterm")

---@type Config
local config = wezterm.config_builder()

-- Your configuration here with full type support
config.window_decorations = "RESIZE|MACOS_FORCE_DISABLE_SHADOW"

return config
```

These annotations enable the **Lua Language Server** to provide
proper type checking and autocompletion for WezTerm configuration options.

---

## Credits

- [@justinsgithub](https://github.com/justinsgithub) - **The Author _(not active currently)_**
- [@DrKJeff16](https://github.com/DrKJeff16) - **Maintainer, _de-facto_ Owner**
- [@craigmac](https://github.com/craigmac) - **Maintainer**
- [@gonstoll](https://github.com/gonstoll) - **Maintainer**
- [@TheLeoP](https://github.com/TheLeoP) - **Contributor**
