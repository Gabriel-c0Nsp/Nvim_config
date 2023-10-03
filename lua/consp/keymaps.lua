local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Split window
keymap('n', 'vd', ':split<Return><C-w>w', opts)
keymap('n', 'vs', ':vsplit<Return><C-w>w', opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Insert --
-- Press jk fast to enter
--keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- salvar rapidamente
-- keymap("n", "<leader>w", ":w<CR>", term_opts)

-- sair rapidamente
keymap("n", "<leader>q", ":q!<CR>", term_opts)

-- apagar uma palavra inteira no insert mode
keymap("i", "df", "<Esc>ciw", opts)
-- apagar uma palavra inteira no normal mode e depois entrar no insert mode
keymap("n", "df", "ciw", opts)

-- apagar palavra mais fácil sem precisar sair do normal mode
keymap("n", "<Bs>", "diw", opts)

-- dar tab no normal mode
keymap("n", "<Tab>", "I<Space><Space><Esc>", opts)

-- selecionar todo o arquivo com control a
keymap('n', '<C-a>', 'ggVG', opts)
keymap('i', '<C-a>', '<Esc>ggVG', opts)

-- zero agora vai para o começo do texto, não da linha
keymap("n", "0", "^", opts)
-- zero agora vai para o começo do texto, não da linha no visual moode
keymap("v", "0", "^", opts)
-- 1 vai para o final da linha (no lugar do $)
keymap("n", "-", "$", opts)
-- 1 vai para o final da linha (no lugar do $) no visual mode
keymap("v", "-", "$", opts)

-- deleta até o final da linha
keymap('n', 'd-', 'd$', opts)

-- copia até o final da linha
keymap('n', 'v-', 'v$', opts)
keymap('v', 'v-', 'v$', opts)

-- enter além de descer a tela também cria linha nova se preciso
keymap("n", "<CR>", "o<Esc>", opts)

function IncrementNumber()
  local current_line = vim.api.nvim_get_current_line()
  local row, col = unpack(vim.api.nvim_win_get_cursor(0))
  local num_str = current_line:match("%d+", col)

  if num_str then
    local number = tonumber(num_str)
    local new_number = number + 1
    local new_line = current_line:gsub(tostring(number), tostring(new_number), 1)
    vim.api.nvim_buf_set_lines(0, row - 1, row, false, { new_line })
  end
end

-- Função para decrementar o número abaixo do cursor
function DecrementNumber()
  local current_line = vim.api.nvim_get_current_line()
  local row, col = unpack(vim.api.nvim_win_get_cursor(0))
  local num_str = current_line:match("%d+", col)

  if num_str then
    local number = tonumber(num_str)
    local new_number = number - 1
    local new_line = current_line:gsub(tostring(number), tostring(new_number), 1)
    vim.api.nvim_buf_set_lines(0, row - 1, row, false, { new_line })
  end
end

-- + para incrementar número abaixo do cursor
keymap('n', '+', ':lua IncrementNumber()<CR>', opts)

-- _ para decrementar número abaixo do cursor
keymap('n', '_', ':lua DecrementNumber()<CR>', opts)


-- Stay text indent mode
keymap("v", "H", "<gv", opts)
keymap("v", "L", ">gv", opts)

-- move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- deletar buffer atual
keymap('n', '<leader>c', ':Bdelete<CR>', opts)

-- Telescope 
keymap('n', '<leader>s', ':Telescope find_files<CR>', opts)
keymap('n', '<leader>a', ':Telescope live_grep<CR>', opts)

-- Apagar highlight de pesquisas
keymap('n', '<leader>h', ':set hlsearch!<CR>', opts)

-- Copiar uma palavra inteira com mais facilidade
keymap('n', 'yw', 'yiw', opts)

-- selecionar uma palavra inteira de forma mais fácil
keymap('n', 'vw', 'viw', opts)

-- visual mode na vertical
keymap('i', '<A-v>', '<C-v>', opts)
keymap('n', '<A-v>', '<C-v>', opts)

-- viajar metade de uma página para baixo
keymap('n', '<A-j>', '<C-d>zz', opts)
keymap('n', '<A-k>', '<C-u>zz', opts)

-- atualizar todas as configurações
keymap('n', '<leader><leader>s', ':source %<CR>', opts)

-- replace de forma mais fácil (para apenas uma palavra)
keymap("n", "<leader>rp", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<left><left><left>", { noremap = true})

-- modificar letra para capital case (acionar de novo para ter efeito contrário)
keymap('n', 'm', '~', opts)
keymap('v', 'm', '~', opts)
keymap('n', 'M', 'viw~', opts)
keymap('v', 'M', 'viw~', opts)

-- abrir barra de pesquisa
keymap('n', '<leader>f', '/', {})
