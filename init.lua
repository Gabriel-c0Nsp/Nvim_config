require("consp.options")
require("consp.keymaps")
require("consp.lazy")
require("consp.colorschemes")
require("consp.macros")

-- local function get_current_word()
--   local current_word = vim.fn.expand("<cword>")
--   local col = vim.fn.col('.')
--
--   -- Encontrar a posição da primeira letra da palavra
--   local _, start_col = current_word:find(current_word)
--
--   -- Calcular a posição atual da primeira letra na linha
--   local first_letter_pos = col - #current_word + start_col - 1
--   print(first_letter_pos)
--   return first_letter_pos
-- end
--
-- local function check_cursor_position()
--   local current_word = get_current_word()
--   local col = vim.fn.col('.') - 1
--
--   if current_word == col then
--     print("Cursor está no começo da palavra")
--     print(current_word, col)
--     return true
--   else
--     print("Cursor não está no começo da palavra")
--     print(current_word, col)
--     return false
--   end
-- end
--
-- check_cursor_position()
--
-- function set_keymaps()
--   if (check_cursor_position()) then
--     -- apagar uma palavra inteira no normal mode e depois entrar no insert mode
--     vim.api.nvim_set_keymap("n", "<C-BS>", "viwdi", {})
--
--     -- apagar palavra mais fácil sem precisar sair do normal mode
--     vim.api.nvim_set_keymap("n", "<Bs>", "viwd", {})
--   else
--     -- apagar uma palavra inteira no normal mode e depois entrar no insert mode
--     vim.api.nvim_set_keymap("n", "<C-BS>", "blviwdi", {})
--
--     -- apagar palavra mais fácil sem precisar sair do normal mode
--     vim.api.nvim_set_keymap("n", "<Bs>", "blviwd", {})
--   end
-- end
