return {

    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })

        local opts = { noremap = true, silent = true }
        local term_opts = { silent = true }

        -- Shorten function name
        local keymap = vim.api.nvim_set_keymap

        -- keymaps 

        -- quote word
        keymap('n', 'qw', 'ysiw', term_opts)

        -- arround quotes
        keymap('n', 'aq', 'ysa', term_opts)
    end
}
