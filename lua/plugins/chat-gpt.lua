return {
	"jackMort/ChatGPT.nvim",
	event = "VeryLazy",
	config = function()
		require("chatgpt").setup({
			api_key_cmd = "echo $OPENAI_API_KEY",
			yank_register = "+",
			edit_with_instructions = {
				diff = false,
			},
			chat = {
				welcome_message = WELCOME_MESSAGE,
				loading_text = "Loading, please wait ...",
				question_sign = "?",
				answer_sign = "!",
				max_line_length = 240,
				sessions_window = {
					border = {
						style = "rounded",
						text = {
							top = " Sessions ",
						},
					},
					win_options = {
						winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
					},
				},
				keymaps = {
					close = { "<C-e>" },
					yank_last = "<C-s>",
					yank_last_code = "<C-y>",
					scroll_up = "<C-k>",
					scroll_down = "<C-j>",
					new_session = "<C-n>",
					cycle_windows = "<Tab>",
					cycle_modes = "<C-f>",
					next_message = "<C-l>",
					prev_message = "<C-h>",
					select_session = "<C-m>",
					rename_session = "r",
					delete_session = "d",
					draft_message = "<C-d>",
					edit_message = "e",
					delete_message = "d",
					toggle_settings = "<C-o>",
					toggle_message_role = "<C-r>",
					toggle_system_role_open = "<C-Y>",
					stop_generating = "<C-c>",
				},
			},
			popup_layout = {
				default = "right",
				center = {
					width = "80%",
					height = "80%",
				},
				right = {
					width = "50%",
					width_settings_open = "50%",
				},
			},
			popup_window = {
				border = {
					highlight = "FloatBorder",
					style = "rounded",
					text = {
						top = " ChatGPT ",
					},
				},
				win_options = {
					wrap = true,
					linebreak = true,
					foldcolumn = "1",
					winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
				},
				buf_options = {
					filetype = "markdown",
				},
			},
			system_window = {
				border = {
					highlight = "FloatBorder",
					style = "rounded",
					text = {
						top = " SYSTEM ",
					},
				},
				win_options = {
					wrap = true,
					linebreak = true,
					foldcolumn = "2",
					winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
				},
			},
			popup_input = {
				prompt = "  ",
				border = {
					highlight = "FloatBorder",
					style = "rounded",
					text = {
						top_align = "center",
						top = " Prompt ",
					},
				},
				win_options = {
					winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
				},
				submit = "<C-Enter>",
				submit_n = "<Enter>",
				max_visible_lines = 20,
			},
			settings_window = {
				border = {
					style = "rounded",
					text = {
						top = " Settings ",
					},
				},
				win_options = {
					winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
				},
			},
			openai_params = {
				model = "gpt-3.5-turbo",
				frequency_penalty = 0,
				presence_penalty = 0,
				max_tokens = 300,
				temperature = 0,
				top_p = 1,
				n = 1,
			},
			openai_edit_params = {
				model = "gpt-3.5-turbo",
				frequency_penalty = 0,
				presence_penalty = 0,
				temperature = 0,
				top_p = 1,
				n = 1,
			},
			use_openai_functions_for_edits = false,
			actions_paths = {},
			show_quickfixes_cmd = "Trouble quickfix",
			predefined_chat_gpt_prompts = "https://raw.githubusercontent.com/f/awesome-chatgpt-prompts/main/prompts.csv",
		})

		local opts = { noremap = true, silent = true }
		local term_opts = { silent = true }

		-- Shorten function name
		local keymap = vim.api.nvim_set_keymap

		-- keymaps

		-- open ChatGPT
		keymap("n", "<leader>gpo", ":ChatGPT<cr>", term_opts)

		-- ChatGPT run options
		keymap("n", "<leader>gpr", ":ChatGPTRun ", {})

		-- ChatGPT run options: fix bugs
		keymap("n", "<leader>gpf", "<C-a>y:ChatGPTRun fix_bugs<cr>", {})
		keymap("x", "<leader>gpf", ":ChatGPTRun fix_bugs<cr>", {})
		keymap("v", "<leader>gpf", ":ChatGPTRun fix_bugs<cr>", {})

    -- ChatGPT edit with instructions
		keymap("x", "<leader>gpi", ":'<,'>ChatGPTEditWithInstructions<cr>", term_opts)
		keymap("v", "<leader>gpi", ":'<,'>ChatGPTEditWithInstructions<cr>", term_opts)

    -- ChatGPT complete code
    keymap("x", "<leader>gpc", ":'<,'>ChatGPTCompleteCode<cr>", term_opts)

    -- ChatGPT explain code
		keymap("x", "<leader>gpe", ":ChatGPTRun explain_code<cr>", {})
		keymap("v", "<leader>gpe", ":ChatGPTRun explain_code<cr>", {})

	end,
	dependencies = {
		"MunifTanjim/nui.nvim",
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
}
