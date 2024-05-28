-- :help options

local options = {
	backup = false,
	clipboard = "unnamedplus",
	fillchars = { eob = " " },
	cmdheight = 1,
	completeopt = { "menuone", "noselect" },
	conceallevel = 0,
	fileencoding = "utf-8",
	hlsearch = true,
	ignorecase = true,
	pumheight = 10,
	showmode = true,
	showtabline = 6,
	smartcase = true,
	smartindent = true,
	splitbelow = true,
	splitright = true,
	swapfile = false,
	termguicolors = true,
	timeoutlen = 500,
	undofile = true,
	updatetime = 300,
	writebackup = false,
	expandtab = true,
	-- shiftwidth = 2,
	shiftwidth = 4,
	tabstop = 2,
	cursorline = false,
	number = true,
	relativenumber = true,
	numberwidth = 1,
	signcolumn = "yes",
	wrap = false,
	scrolloff = 8,
	sidescrolloff = 8,
	guifont = "monospace:h17",
	showcmd = false,
}

-- iterar pelas options
vim.opt.shortmess:append("c")
for k, v in pairs(options) do
	vim.opt[k] = v
end

-- VimScript

vim.cmd("set whichwrap+=<,>,[,],h,l")
vim.cmd([[set iskeyword+=-]])
vim.cmd([[set formatoptions-=cro]])
vim.cmd([[set guicursor=n-v-c-i:block]])
vim.cmd([[set laststatus=3]])
