local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Alterar entre dark e light mode. TODO função para alterar usando apenas um comando
keymap('n', '<leader>l', ':color zellner<CR>', opts)
keymap('n', '<leader>d', ':color default<CR>', opts)
