-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

vim.pack.add {
  { src = 'https://github.com/nvim-neo-tree/neo-tree.nvim', version = vim.version.range '*' },
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/MunifTanjim/nui.nvim',
}

vim.keymap.set('n', '\\', function()
  local path = vim.api.nvim_buf_get_name(0)
  if vim.bo.buftype == '' and path ~= '' and vim.uv.fs_stat(path) then
    vim.cmd 'Neotree reveal'
  else
    vim.cmd 'Neotree focus'
  end
end, { desc = 'NeoTree reveal', silent = true })

require('neo-tree').setup {
  filesystem = {
    window = {
      mappings = {
        ['\\'] = 'close_window',
      },
    },
    filtered_items = {
      visible = true, -- Show hidden files by default
      hide_dotfiles = false,
      hide_gitignored = false,
    },
  },
}
