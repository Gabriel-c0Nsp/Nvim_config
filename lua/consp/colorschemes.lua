-- catch de possível erro ao tentar utilizar um tema não existente:

--local colorscheme = "colorschemeHere"

--local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

--if not status_ok then
--  vim.notify("Tema(colorscheme) " .. colorscheme .. "não encontrado!")
--  return
--end


local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Alterar entre dark e light mode. TODO função para alterar usando apenas um comando
-- keymap('n', '<leader>l', ':color zellner<CR>', opts)
-- keymap('n', '<leader>d', ':color default<CR>', opts)
