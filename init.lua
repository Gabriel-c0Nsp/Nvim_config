require("consp.options")
require("consp.keymaps")
require("consp.lazy")
require("consp.colorschemes")
require("consp.macros")
require("consp.backspace")

-- Path: backspace.lua
-- Development of this functionality is in progress
vim.api.nvim_create_user_command("Test", function()
    package.loaded.backspace = nil
    require("consp.backspace").backspace()
end, {})

vim.keymap.set("n", "zz", "<cmd>Test<CR>")
vim.keymap.set("i", "zz", "<cmd>Test<CR>")
