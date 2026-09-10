-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim',
	  requires = { 'nvim-lua/plenary.nvim' }
  }
  use { 
	  "rose-pine/neovim",
	  name = "rose-pine",
	  config = function()
		  vim.cmd("colorscheme rose-pine")
	  end
  }

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use('theprimeagen/harpoon')

  use('mbbill/undotree')

  use {
	  "lewis6991/gitsigns.nvim",
  }

  use {
	  "windwp/nvim-autopairs",
  }
  
  use {
	  "akinsho/toggleterm.nvim",
	  config = function()
		  require("toggleterm").setup({
			  direction = "float",
		  })
	  end,
  }

end)
