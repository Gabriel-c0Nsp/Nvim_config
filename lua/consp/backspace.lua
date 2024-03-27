local M = {}

M.backspace = function()
    local word = vim.fn.expand("<cword>")

    if word == "" then
        vim.cmd("normal! b")
        word = vim.fn.expand("<cword>")
    end

    vim.cmd("normal! diw")
end

return {
    backspace = M.backspace,
}
