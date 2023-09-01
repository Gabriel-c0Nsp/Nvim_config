local opts = { noremap = true, silent = false }
local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

keymap('n', '<leader>us', ':SessionManager! save_current_session<CR>',opts )
keymap('n', '<leader>ul', ':SessionManager! load_session<CR>',opts)
keymap('n', '<leader>ud', ':SessionManager! delete_session<CR>',opts)
