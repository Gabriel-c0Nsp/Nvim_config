local M = {}

M.backspace = function()
  local word = vim.fn.expand("<cword>")
  local first_char = string.sub(word, 1, 1)

  local function get_blank_spaces()
    -- TODO: implementar
  end

  local in_case = false

    word = vim.fn.expand("<cword>") -- para fins de debug

  if word == "" then
    in_case = true
    vim.cmd("normal! b")
    vim.cmd("normal! diw")
  elseif first_char == '"' then
    in_case = true
    vim.cmd("normal! b")
    vim.cmd("normal! dt\"")
  elseif first_char == "'" then
    in_case = true
    vim.cmd("normal! b")
    vim.cmd("normal! dt'")
  elseif first_char == "\"" then
    in_case = true
    vim.cmd("normal! b")
    vim.cmd("normal! dt\"")
  elseif first_char == "]" then
    in_case = true
    vim.cmd("normal! b")
    vim.cmd("normal! dt]")
  elseif first_char == ")" then
    in_case = true
    vim.cmd("normal! b")
    vim.cmd("normal! dt)")
  elseif first_char == "}" then
    in_case = true
    vim.cmd("normal! b")
    vim.cmd("normal! dt}")
  elseif first_char == ">" then
    in_case = true
    vim.cmd("normal! b")
    vim.cmd("normal! dt>")
  elseif first_char == "\\" then
    in_case = true
    vim.cmd("normal! b")
    vim.cmd("normal! dt\\")
  end

  if not in_case then
    vim.cmd("normal! diw")
  end

  -- para fins de debug
  -- print("word: " .. word)
  -- print("first_char: " .. first_char)

end

return {
  backspace = M.backspace,
}
