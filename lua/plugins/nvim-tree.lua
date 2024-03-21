return {
  "nvim-tree/nvim-tree.lua",
  config = function()
    require("nvim-tree").setup({
      -- disable netrw at the very start of your init.lua

      -- set termguicolors to enable highlight groups
      -- vim.opt.termguicolors = true

      -- empty setup using defaults

      -- OR setup with some options
      sort_by = "case_sensitive",
      view = {
        width = 40,
        side = "right",
      },
      renderer = {
        group_empty = true,

        icons = {
          web_devicons = {
            file = {
              enable = true,
              color = true,
            },
            folder = {
              enable = false,
              color = true,
            },
          },
          git_placement = "before",
          modified_placement = "after",
          diagnostics_placement = "signcolumn",
          bookmarks_placement = "signcolumn",
          padding = " ",
          symlink_arrow = "",
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
            modified = true,
            diagnostics = true,
            bookmarks = true,
          },
          glyphs = {
            default = "",
            symlink = "",
            bookmark = "",
            modified = "",
            folder = {
              arrow_closed = "",
              arrow_open = "",
              default = "",
              open = "",
              empty = "",
              empty_open = "",
              symlink = "",
              symlink_open = "",
            },
            git = {
              unstaged = "",
              staged = "",
              unmerged = "",
              renamed = "",
              untracked = "",
              deleted = "",
              ignored = "",
            },
          },
        },
      },
      filters = {
        dotfiles = false,
      },
    })
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    local opts = { noremap = true, silent = true }

    -- Shorten function name
    local keymap = vim.api.nvim_set_keymap
    keymap("n", "<leader>e", ":NvimTreeFindFileToggle<CR>", opts)
  end,
}
