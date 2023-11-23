vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'jaredgorski/spacecamp'
  use 'agude/vim-eldar'
  use 'luisiacc/gruvbox-baby'
  use 'alvan/vim-closetag'
  use "blazkowolf/gruber-darker.nvim"
  use 'folke/neodev.nvim'
  use 'yorickpeterse/happy_hacking.vim'
  use 'tzachar/local-highlight.nvim'
  use 'numToStr/Comment.nvim'
  use {
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup { icons = false }
    end
  }
  use {
    'mrcjkb/haskell-tools.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
    },
    branch = '2.x.x', -- Recommended
    ft = { 'haskell', 'lhaskell', 'cabal', 'cabalproject' },
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
  use 'mbbill/undotree'
  use 'tpope/vim-fugitive'
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
    config = function() require("nvim-autopairs").setup {
      enable_bracket_in_quote = false,
      enable_afterquote = true,
      enable_check_bracket_line = false,
    } end
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
