vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'alvan/vim-closetag'
  use 'f-person/git-blame.nvim'
  use "blazkowolf/gruber-darker.nvim"
  use 'folke/neodev.nvim'
  use 'tzachar/local-highlight.nvim'
  use 'numToStr/Comment.nvim'
  use {
    'folke/todo-comments.nvim',
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    config = function()
      require("todo-comments").setup{}
    end
  }
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
      -- LSP
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },
      { 'hrsh7th/cmp-nvim-lsp-signature-help' },

      -- AUTOCOMPETITION
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- SNIPETS
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
      { 'hrsh7th/cmp-vsnip' },
      { 'hrsh7th/vim-vsnip' },
    }
  }

  use 'mbbill/undotree'
  use 'tpope/vim-fugitive'
  use 'fatih/vim-go'
  use 'wbthomason/packer.nvim'
  use 'rust-lang/rust.vim'
  use 'voldikss/vim-floaterm'
  use 'neovim/nvim-lspconfig'
  use 'simrat39/rust-tools.nvim'
  use "lukas-reineke/indent-blankline.nvim"
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

  use { 'kyazdani42/nvim-web-devicons' }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {
      enable_bracket_in_quote = false,
      enable_afterquote = true,
      enable_check_bracket_line = false,
    } end
  }
  use{
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use("nvim-treesitter/nvim-treesitter-context")
  use {
    'theprimeagen/harpoon',
    requires = { {"nvim-lua/plenary.nvim"} }
  }
  use {
    'williamboman/mason.nvim',
    run = ":MasonUpdate"
  }
  use ("ray-x/lsp_signature.nvim")
end)
