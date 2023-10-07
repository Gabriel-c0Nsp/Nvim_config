local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Install your plugins here
require('lazy').setup({
  
   "nvim-lua/popup.nvim",    -- An implementation of the Popup API from vim in Neovim
   "nvim-lua/plenary.nvim", -- Useful lua functions used ny lots of plugins

  -- Meus plugins aqui:

  -- Colorschemes
  -- use 'Lunarvim/colorschemes'

  -- cmp plugins
   "hrsh7th/nvim-cmp",       -- The completion plugin
   "hrsh7th/cmp-buffer",     -- buffer completions
   "hrsh7th/cmp-path",       -- path completions
   "hrsh7th/cmp-cmdline",    -- cmdline completions
   "saadparwaiz1/cmp_luasnip", -- snippet completions
   "hrsh7th/cmp-nvim-lsp",
   "hrsh7th/cmp-nvim-lua",

  -- snippets
   "L3MON4D3/LuaSnip",           --snippet engine
   "rafamadriz/friendly-snippets", -- a bunch of snippets to use

  -- LSP
   "neovim/nvim-lspconfig",             -- enable LSP
   "williamboman/mason.nvim",           -- simple to use language server installer
   "williamboman/mason-lspconfig.nvim", -- simple to use language server installer

  -- Java
   "mfussenegger/nvim-jdtls",

  -- Debugging
   -- "mfussenegger/nvim-dap",
   -- "rcarriga/n,vim-dap-ui",

  -- Side lines
   "sitiom/nvim-numbertoggle",

  -- Gerenciador de arquivos
   "nvim-tree/nvim-tree.lua",

  -- Fzf
   "nvim-telescope/telescope.nvim",

  -- Autopair
   "windwp/nvim-autopairs",

  -- Comments
   "numToStr/Comment.nvim",

  -- Gitsigns
   "lewis6991/gitsigns.nvim",

  -- Tabs
   "akinsho/bufferline.nvim",
   "moll/vim-bbye",

  -- Transparent neovim
   -- "tribela/vim-transparent",

  -- Terminal (toggleterm)
   "akinsho/toggleterm.nvim",

  -- emmet
   "mattn/emmet-vim",

  -- Melhor forma de navegar pelo código
   -- "ggandor/lightspeed.nvim",
   "ggandor/leap.nvim",

  -- sourround
  ({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  }),

  -- salvar seção de buffers
   "Shatur/neovim-session-manager",

  -- salvar arquivo automaticamente
   "pocco81/auto-save.nvim",

  -- treesitter 
   {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },
   {
    "nvim-treesitter/playground",
    event = "BufRead",
  },

})
