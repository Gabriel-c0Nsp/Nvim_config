return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPre", "BufNewFile" },
		build = ":TSUpdate",

		config = function()
			-- import nvim-treesitter plugin
			local treesitter = require("nvim-treesitter.configs")

			-- configure treesitter
			treesitter.setup({
				-- enable syntax highlighting
				highlight = {
					enable = false,
				},
				-- enable indentation
				indent = { enable = true },
				playground = { enable = true },
				query_linter = {
					enable = true,
					use_virtual_text = false,
					lint_events = { "BufWrite", "CursorHold" },
				},
			})
		end,
	},
}
