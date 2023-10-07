local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

--Remap space as leader key
vim.api.nvim_set_keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",


local i = vim.api.nvim_set_keymap
local n = vim.api.nvim_set_keymap
local v = vim.api.nvim_set_keymap
local x = vim.api.nvim_set_keymap
local t = vim.api.nvim_set_keymap
local c = vim.api.nvim_set_keymap



local normal = {
  -- Split window
  n('n', 'vd', ':split<Return><C-w>w', opts),
  n('n', 'vs', ':vsplit<Return><C-w>w', opts),

-- Better window navigation
  n("n", "<C-h>", "<C-w>h", opts),
  n("n", "<C-j>", "<C-w>j", opts),
  n("n", "<C-k>", "<C-w>k", opts),
  n("n", "<C-l>", "<C-w>l", opts),

-- Resize with arrows
  n("n", "<C-Up>", ":resize +2<CR>", opts),
  n("n", "<C-Down>", ":resize -2<CR>", opts),
  n("n", "<C-Left>", ":vertical resize -2<CR>", opts),
  n("n", "<C-Right>", ":vertical resize +2<CR>", opts),

  -- Navigate buffers
  n("n", "<S-l>", ":bnext<CR>", opts),
  n("n", "<S-h>", ":bprevious<CR>", opts),

  -- salvar rapidamente
  -- n("n", "<leader>w", ":w<CR>", term_opts),

  -- sair rapidamente
  n("n", "<leader>q", ":q!<CR>", term_opts),

  -- apagar uma palavra inteira no normal mode e depois entrar no insert mode
  n("n", "df", "ciw", opts),

  -- apagar palavra mais fácil sem precisar sair do normal mode
  n("n", "<Bs>", "diw", opts),

  -- dar tab no normal mode
  n("n", "<Tab>", "I<Space><Space><Esc>", opts),

  -- selecionar todo o arquivo com control a
  n('n', '<C-a>', 'ggVG', opts),

  -- zero agora vai para o começo do texto, não da linha
  n("n", "0", "^", opts),

  -- '-' vai para o final da linha (no lugar do $)
  n("n", "-", "$", opts),

  -- deleta até o final da linha
  n('n', 'd-', 'd$', opts),

  -- copia até o final da linha
  n('n', 'y-', 'y$', opts),

  -- enter além de descer a tela também cria linha nova se preciso
  n("n", "<CR>", "o<Esc>", opts),

  -- + para incrementar número abaixo do cursor
  n('n', '+', '<C-a>', opts),

  -- _ para decrementar número abaixo do cursor
  n('n', '_', '<C-x>', opts),

  -- deletar buffer atual
  n('n', '<leader>c', ':Bdelete<CR>', opts),

  -- Telescope 
  n('n', '<leader>s', ':Telescope find_files<CR>', opts),
  n('n', '<leader>a', ':Telescope live_grep<CR>', opts),

  -- Apagar highlight de pesquisas
  n('n', '<leader>h', ':set hlsearch!<CR>', opts),

  -- Copiar uma palavra inteira com mais facilidade
  n('n', 'yw', 'yiw', opts),

  -- selecionar uma palavra inteira de forma mais fácil
  n('n', 'vw', 'viw', opts),

  -- visual mode na vertical
  n('n', '<A-v>', '<C-v>', opts),

  -- viajar metade de uma página para baixo
  n('n', '<A-j>', '<C-d>zz', opts),
  n('n', '<A-k>', '<C-u>zz', opts),

  -- atualizar todas as configurações
  n('n', '<leader><leader>s', ':source %<CR>', opts),

  -- replace de forma mais fácil (para apenas uma palavra)
  n("n", "<leader>rp", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<left><left><left>", { noremap = true}),

  -- abrir barra de pesquisa
  n('n', '<leader>f', '/', {}),

  -- modificar letra para capital case 
  n('n', 'm', '~', opts),
  n('n', 'M', 'viw~', opts),
}



local insert_mode = {
  -- Press jk fast to enter
  -- i("i", "jk", "<ESC>", opts)

  -- apagar uma palavra inteira no insert mode
  i("i", "df", "<Esc>ciw", opts),

  -- '-' vai para o final da linha (no lugar do $)
  i('i', '<C-a>', '<Esc>ggVG', opts)
}



local visual_mode = {
  -- Stay in indent mode
  v("v", "<", "<gv", opts),
  v("v", ">", ">gv", opts),

  -- zero agora vai para o começo do texto, não da linha 
  v("v", "0", "^", opts),

  -- '-' vai para o final da linha (no lugar do $)
  v("v", "-", "$", opts),

  -- copia até o final da linha
  v('v', 'v-', 'v$', opts),

  -- Stay text indent mode
  v("v", "H", "<gv", opts),
  v("v", "L", ">gv", opts),

  -- visual mode na vertical
  v('v', '<A-v>', '<C-v>', opts),
  
  -- modificar letra para capital case 
  v('v', 'm', '~', opts),
  v('v', 'M', 'viw~', opts),
}



local terminal_mode = {
  -- Better terminal navigation
  t("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts),
  t("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts),
  t("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts),
  t("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts),
}



local visual_block_mode = {
  -- move text up and down
  x("x", "J", ":move '>+1<CR>gv-gv", opts),
  x("x", "K", ":move '<-2<CR>gv-gv", opts),
}
