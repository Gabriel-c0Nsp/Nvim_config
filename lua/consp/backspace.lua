local M = {}

M.backspace = function()
  local word = vim.fn.expand("<cword>")
  local first_char = string.sub(word, 1, 1)

  if word == "" or first_char == "\"" or first_char == "'" or first_char == "]" or first_char == ")" or first_char == "\\" then
    vim.cmd("normal! b")
    -- word = vim.fn.expand("<cword>")
  end

  vim.cmd("normal! diw")
end

return {
  backspace = M.backspace,
}
