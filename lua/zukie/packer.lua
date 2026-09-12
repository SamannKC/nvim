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

  use {"neovim/nvim-lspconfig"}
  use {"williamboman/mason.nvim"}
  use {
      "williamboman/mason-lspconfig.nvim",
      requires = {
          "williamboman/mason.nvim",
          "neovim/nvim-lspconfig",
      },
  }

  use {
      "hrsh7th/nvim-cmp",
      requires = {
          "hrsh7th/cmp-nvim-lsp",
          "hrsh7th/cmp-buffer",
          "hrsh7th/cmp-path",
      },
  }

  use{"hrsh7th/cmp-nvim-lsp"}
  use{"hrsh7th/cmp-buffer"}
  use{"hrsh7th/cmp-path"}

end)
