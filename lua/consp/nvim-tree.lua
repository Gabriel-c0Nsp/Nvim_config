local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 40,
    hide_root_folder = false,
    side = "right",
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

keymap('n', '<leader>e', ':NvimTreeFindFileToggle<CR>', opts)
