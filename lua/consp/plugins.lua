local fn = vim.fn
-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim"    -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim"  -- Useful lua functions used ny lots of plugins

  -- Meus plugins aqui:

  -- Colorschemes
  use 'Lunarvim/colorschemes'

  -- cmp plugins
  use "hrsh7th/nvim-cmp"       -- The completion plugin
  use "hrsh7th/cmp-buffer"     -- buffer completions
  use "hrsh7th/cmp-path"       -- path completions
  use "hrsh7th/cmp-cmdline"    -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"

  -- snippets
  use "L3MON4D3/LuaSnip"           --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig"             -- enable LSP
  use "williamboman/mason.nvim"           -- simple to use language server installer
  use "williamboman/mason-lspconfig.nvim" -- simple to use language server installer

  -- Java
  use "mfussenegger/nvim-jdtls"

  -- Debugging
  -- use "mfussenegger/nvim-dap"
  -- use "rcarriga/nvim-dap-ui"

  -- Side lines
  use "sitiom/nvim-numbertoggle"

  -- Gerenciador de arquivos
  use "nvim-tree/nvim-tree.lua"

  -- Fzf
  use "nvim-telescope/telescope.nvim"

  -- Autopair
  use "windwp/nvim-autopairs"

  -- Comments
  use "numToStr/Comment.nvim"

  -- Gitsigns
  use "lewis6991/gitsigns.nvim"

  -- Tabs
  use "akinsho/bufferline.nvim"
  use "moll/vim-bbye"

  -- Transparent neovim
  -- use "tribela/vim-transparent"

  -- Terminal (toggleterm)
  use "akinsho/toggleterm.nvim"

  -- emmet
  use "mattn/emmet-vim"

  -- Melhor forma de navegar pelo código
  -- use "ggandor/lightspeed.nvim"
  use "ggandor/leap.nvim"

  -- sourround
  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  })

  -- salvar seção de buffers
  use "Shatur/neovim-session-manager"

  -- salvar arquivo automaticamente
  use "pocco81/auto-save.nvim"

  -- treesitter 
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use {
    "nvim-treesitter/playground",
    event = "BufRead",
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
