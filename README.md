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
    {'gonstoll/wezterm-types', lazy = true},
  },
  opts = {
    library = {
      {path = 'wezterm-types', mods = {'wezterm'}},
    },
  },
}
```
