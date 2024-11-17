vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  use 'wbthomason/packer.nvim'
  -- use { "ellisonleao/gruvbox.nvim" }
  use('p00f/alabaster.nvim')

  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use('tpope/vim-fugitive')
  use({
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup()
    end
  })

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v4.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }

  -- use {
  --   "shortcuts/no-neck-pain.nvim",
  --   tag = "*",
  --   config = function()
  --     require("no-neck-pain").setup({
  --       autocmds = {
  --         enableOnVimEnter = true,
  --         disableOnLastBuffer = false,
  --       }
  --     })
  --   end
  -- }

  -- use('github/copilot.vim')
end)
