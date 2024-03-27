return {
    "ggandor/leap.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        require("leap").add_default_mappings()
    end,


    -- keymaps
    vim.api.nvim_set_keymap("n", "f", "s", {}),
    vim.api.nvim_set_keymap("n", "F", "S", {})
}
