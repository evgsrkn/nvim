vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'christoomey/vim-tmux-navigator'
  use 'alvan/vim-closetag'
  use 'folke/neodev.nvim'
  use {
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup { icons = false }
    end
  }
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }
  use 'olexsmir/gopher.nvim'
  use 'mfussenegger/nvim-dap'
  use 'patstockwell/vim-monokai-tasty'
  use 'wbthomason/packer.nvim'
  use 'rust-lang/rust.vim'
  use 'voldikss/vim-floaterm'
  use 'neovim/nvim-lspconfig'
  use 'nvim-tree/nvim-web-devicons'
  use 'simrat39/rust-tools.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'hrsh7th/nvim-cmp'
  use "lukas-reineke/indent-blankline.nvim"
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/vim-vsnip'
  use 'tanvirtin/monokai.nvim'
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons',
      opt = true
    }
  }
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use{
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use 'github/copilot.vim'
  use {
    'williamboman/mason.nvim',
    run = ":MasonUpdate"
  }
end)
