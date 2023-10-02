local status_ok, tree = pcall(require, "nvim-tree")
if not status_ok then 
  print('ERROR: Something wrong with auto-save plugin')
end

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
tree.setup({
  sort_by = "case_sensitive",
  view = {
    width = 40,
    side = "right",
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})

keymap('n', '<leader>e', ':NvimTreeFindFileToggle<CR>', opts)
