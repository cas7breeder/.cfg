-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Syntax highlighting, indentation, code folding
  use { 'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  -- Undo history tree - :UndotreeToggle
  use 'mbbill/undotree';
  use 'ThePrimeagen/harpoon';
  -- Git commands - :Git status/diff/blame
  use 'tpope/vim-fugitive';

  use {
      'VonHeikemen/lsp-zero.nvim',
      requires = {
          --- Manage LSP servers from neovim
          {'williamboman/mason.nvim'},
          {'williamboman/mason-lspconfig.nvim'},
          -- LSP Support
          {'neovim/nvim-lspconfig'},
          -- Autocompletion engine
          {'hrsh7th/nvim-cmp'},
          -- LSP to cmp adapter
          {'hrsh7th/cmp-nvim-lsp'},
          -- Snippet engine
          {'L3MON4D3/LuaSnip'},
      }
  }

  -- use {
  --   'lukas-reineke/indent-blankline.nvim',
  --   config = function()
  --     require("ibl").setup({
  --       -- vertical bar
  --       indent = {
  --           char = "▏",
  --           tab_char = "▏"
  --       },
  --       -- highlight current indent scope
  --       scope = {
  --         enabled = true,
  --         show_start = false,
  --         show_end = false,
  --       },
  --     })
  --   end
  -- }

  ------------------------- COLOR SCHEMES -------------------------
  use 'rafamadriz/neon';

  -- use {
  --     'olivercederborg/poimandres.nvim',
  --     config = function()
  --         require('poimandres').setup {
  --             dim_nc_background = false, -- dim 'non-current' window backgrounds
  --             disable_background = true, -- disable background
  --             disable_float_background = true -- disable background for floats
  --         }
  --     end
  -- }

  -- use 'AlexvZyl/nordic.nvim';

  -- use {
  --     'marko-cerovac/material.nvim',
  --     config = function()
  --         require('material').setup{
  --             disable = {
  --                 background = true
  --             }
  --         }
  --     end
  -- }

end)
