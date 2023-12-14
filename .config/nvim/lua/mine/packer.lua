-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {

	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use ( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  
  ------------------------- COLOR SCHEMES -------------------------
  use { 
	  'olivercederborg/poimandres.nvim',
	  config = function()
		  require('poimandres').setup {
			  dim_nc_background = false, -- dim 'non-current' window backgrounds
			  disable_background = true, -- disable background
			  disable_float_background = true -- disable background for floats
		  }
	  end
  }

  use 'AlexvZyl/nordic.nvim';

  use 'rafamadriz/neon';

  use {
	  'marko-cerovac/material.nvim',
	  config = function()
		  require('material').setup{
			  disable = {
				  background = true
			  }
		  }
	  end
  }

  use 'ThePrimeagen/harpoon';
  use 'mbbill/undotree';
  use 'tpope/vim-fugitive';

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment these if you want to manage LSP servers from neovim
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }

--  use  {
--      'lukas-reineke/indent-blankline.nvim',
--	  config = function()
--		  require('ibl').setup()
--	  end
--  }


end)
