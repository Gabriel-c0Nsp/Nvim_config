local function save_current_colorscheme(theme)
  local config_file = io.open(vim.fn.expand("~/.config/nvim/colorscheme_config"), "w")
  config_file:write(theme)
  config_file:close()
end

local function load_saved_colorscheme()
  local config_file = io.open(vim.fn.expand("~/.config/nvim/colorscheme_config"), "r")
  if config_file then
    local theme = config_file:read("*line")
    if theme and theme ~= "" then
      vim.cmd("colorscheme " .. theme)
    end
    config_file:close()
  end
end

local opts = { noremap = true, silent = true }

local colorschemes = {
  "default",
  "zellner"
}

local current_colorscheme = 1

local function change_colorscheme()
  current_colorscheme = current_colorscheme % #colorschemes + 1
  local new_theme = colorschemes[current_colorscheme]
  vim.cmd("colorscheme " .. new_theme)
  vim.cmd("hi SignColumn guibg=None")
  print("Changing color to: " .. new_theme)
  save_current_colorscheme(new_theme)
end

local keymap = vim.api.nvim_set_keymap
keymap('n', '<A-c>', ':lua require"consp.colorschemes".change_colorscheme()<CR>', opts)

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.cmd("hi SignColumn guibg=None")
  end
})

load_saved_colorscheme()

return {
  change_colorscheme = change_colorscheme
}
