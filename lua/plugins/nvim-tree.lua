return {
   "nvim-tree/nvim-tree.lua",
   config = function()
     require("nvim-tree").setup({
-- disable netrw at the very start of your init.lua

-- set termguicolors to enable highlight groups
-- vim.opt.termguicolors = true

-- empty setup using defaults

-- OR setup with some options
require("nvim-tree").setup({
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

     })
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap
keymap('n', '<leader>e', ':NvimTreeFindFileToggle<CR>', opts)
   end
}
