vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- use {
  --   'svrana/neosolarized.nvim',
  --   requires = { 'tjdevries/colorbuddy.nvim' }
  -- }
  use { "ellisonleao/gruvbox.nvim" }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use('tpope/vim-fugitive')
  use {
    'jose-elias-alvarez/null-ls.nvim',
    requires = { "nvim-lua/plenary.nvim" },
  }
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }

  use ('github/copilot.vim') end)
