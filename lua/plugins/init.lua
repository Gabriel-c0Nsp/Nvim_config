return {
  -- An implementation of the Popup API from vim in Neovim
   "nvim-lua/popup.nvim",    
-- Useful lua functions used ny lots of plugins
   "nvim-lua/plenary.nvim", 

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
   "L3MON4D3/LuaSnip", 
   "rafamadriz/friendly-snippets", 

  -- LSP
   "neovim/nvim-lspconfig",       
   "williamboman/mason.nvim",         
   "williamboman/mason-lspconfig.nvim",

  -- Java
   "mfussenegger/nvim-jdtls",

  -- Debugging
   -- "mfussenegger/nvim-dap",
   -- "rcarriga/n,vim-dap-ui",

  -- Side lines
   "sitiom/nvim-numbertoggle",


  -- Fzf
   "nvim-telescope/telescope.nvim",

  -- Autopair
   "windwp/nvim-autopairs",

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
    "kylechui/nvim-surround"
    -- tag = "*", -- Use for stability; omit to use `main` branch for the latest features
  }),

  -- salvar seção de buffers
   "Shatur/neovim-session-manager",

  -- treesitter 
   {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },
   {
    "nvim-treesitter/playground",
    event = "BufRead",
  },

}
