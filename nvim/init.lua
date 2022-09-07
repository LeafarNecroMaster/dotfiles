require('plugins')
require('base')
require('keybindings')
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

-- Lua
vim.cmd[[colorscheme tokyonight]]
require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'tokyonight-night'
    -- ... your lualine config
  }
}
