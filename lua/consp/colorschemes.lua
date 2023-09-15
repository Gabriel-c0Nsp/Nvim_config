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

local colorschemes = {
  "default",
  "zellner"
}

local current_colorscheme = 1

function change_colorscheme()
  current_colorscheme = current_colorscheme % #colorschemes + 1

  vim.cmd("colorscheme " .. colorschemes[current_colorscheme])
  vim.cmd("hi SignColumn guibg=None")
  print("Changing color to: " .. colorschemes[current_colorscheme])
end

keymap('n', '<A-c>', ':lua require"consp.colorschemes".change_colorscheme()<CR>', opts)

return {
  change_colorscheme = change_colorscheme
}

-- TODO: fazer com que a configuração seja lembrada mesmo após sair
