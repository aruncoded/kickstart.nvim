vim.pack.add { { src = 'https://github.com/catppuccin/nvim', name = 'catppuccin' } }
require('catppuccin').setup {
  flavours = 'mocha',
}

-- Load the colorscheme here.
-- Like many other themes, this one has different styles, and you could load
-- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
vim.cmd.colorscheme 'catppuccin-mocha'
