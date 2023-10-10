return {
	-- An implementation of the Popup API from vim in Neovim
	"nvim-lua/popup.nvim",
	-- Useful lua functions used ny lots of plugins
	"nvim-lua/plenary.nvim",

	-- Colorschemes
	-- use 'Lunarvim/colorschemes'

	-- snippets
	"L3MON4D3/LuaSnip",
	"rafamadriz/friendly-snippets",

	-- Java
	"mfussenegger/nvim-jdtls",

	-- Debugging -- isso não funciona por enquanto
	-- "mfussenegger/nvim-dap",
	-- "rcarriga/n,vim-dap-ui",

	-- Side lines
	"sitiom/nvim-numbertoggle",

	-- Tabs
	"moll/vim-bbye",

	-- Transparent neovim
	-- "tribela/vim-transparent",

	-- Melhor forma de navegar pelo código
	-- "ggandor/lightspeed.nvim",

	{
		"nvim-treesitter/playground",
		event = "BufRead",
	},
}
