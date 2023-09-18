-- Esse é o arquivo onde vou guardar os meus macros

local opts = { noremap = true, silent = true }
local term_opts = { silent = true }


-- Shorten function name
local keymap = vim.api.nvim_set_keymap


-- gerar gets e sets para variáveis privadas no Java
keymap('n', '<leader>rg', 'qw0wwviw"xywviw"zyG2O<Esc>k<leader>h0i<Tab><Tab>public <Esc>"xpa get <Esc>"zpb~bi<Bs><Esc>A() {<CR><Esc>I<Tab><Tab><Tab>return <Esc>"zpa;<CR><Esc>I<Tab><Tab>}<CR><CR><Esc>I<Tab><Tab>public void set <Esc>"zpb~bi<Bs><Esc>A(<Esc>"xpa <Esc>"zpa) {<CR><Esc>I<Tab><Tab><Tab>this.<Esc>"zpa = <Esc>"zpa;<CR><Esc>I<Tab><Tab>}<Esc>k$h*<leader>hq', opts)
