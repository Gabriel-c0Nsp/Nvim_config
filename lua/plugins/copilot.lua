return {
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		build = ":Copilot auth",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				panel = {
					enabled = true,
					auto_refresh = true,
				},
				suggestion = {
					enabled = true,
					auto_trigger = true,
					debounce = 1,
					auto_refresh = true,
					keymap = {
						accept = "<A-l>",
						accept_word = "<A-h>",
						accept_line = "<A-i>",
						next = "<C-n>",
						prev = "<C-b>",
						dismiss = "<A-o>",
					},
				},
			})
		end,
	},
}
