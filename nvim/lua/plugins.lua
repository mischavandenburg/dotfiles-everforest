-- Automatically run :PackerCompile whenever plugins.lua is updated with an autocommand:
vim.api.nvim_create_autocmd('BufWritePost', {
    group = vim.api.nvim_create_augroup('PACKER', { clear = true }),
    pattern = 'plugins.lua',
    command = 'source <afile> | PackerCompile',
})

-- This file can be loaded by calling `lua require('plugins')` from your init.vim


return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Simple plugins can be specified as strings
  use 'rhysd/committia.vim'
  use 'junegunn/fzf.vim'
--  use 'mbbill/undotree'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = function() require'plugins.telescope' end,
  }

  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use {'kyazdani42/nvim-web-devicons'}

  use {'xiyaowong/telescope-emoji.nvim'}



--  use 'preservim/nerdtree'
--  use 'junegunn/goyo.vim'
	
	
	
-- Colorschemes
  use 'wittyjudge/gruvbox-material.nvim'

  use 'sainnhe/everforest'




	use { 
	'lukas-reineke/indent-blankline.nvim',
	config = function() require'plugins.indent-blankline' end,
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function() require'plugins.treesitter' end,
  }

  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function() require'plugins.lualine' end,
  }

  use {
    "folke/zen-mode.nvim",
    config = function()
      require("zen-mode").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }


  use {
  'neovim/nvim-lspconfig',
    config = function() require'plugins.lsp' end,
  }
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

end)
