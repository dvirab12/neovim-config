-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Load Packer if it's installed as `opt` (only necessary if Packer is not always loaded)
vim.cmd [[packadd packer.nvim]]

-- Packer startup function
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Telescope for fuzzy finding
  use {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.8',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Rose Pine color scheme
  use {
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')  -- Load color scheme
    end
  }

  -- Treesitter for better syntax highlighting
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/playground'

  -- LSP Zero with all dependencies for setting up LSP, autocompletion, and snippets
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},         -- Required
      {'hrsh7th/cmp-nvim-lsp'},     -- Required
      {'L3MON4D3/LuaSnip'},         -- Required for snippets
    }
  }

  -- Additional plugins
  use 'owickstrom/vim-colors-paramount'  -- Another color scheme
  use 'windwp/nvim-autopairs'            -- Autopairs for parentheses, brackets, etc.

end)
