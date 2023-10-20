-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  --Color theme Pine Rose
  use({
      'rose-pine/neovim',
      as = 'rose-pine',
      config = function()
          vim.cmd('colorscheme rose-pine')
      end
  })
  -- Telescope fuzzy finding
  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- parsing and syntax hylighting
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use {
    "neovim/nvim-lspconfig",
    }
  -- LSP 
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            -- {'williamboman/mason.nvim'},
            -- {'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},

            -- Snippets
            { 'saadparwaiz1/cmp_luasnip' },
            {
                'L3MON4D3/LuaSnip',
                after = 'nvim-cmp',
            }
        }
    }
    -- nvim-go
    use {
    'crispgm/nvim-go',
        requires ={
        {'crispgm/nvim-go'}
        }
    }
    --Trouble (diagnostics) 
    use {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
         require("trouble").setup {}
  end
}
    -- Toggle terminal 
    use {
        "akinsho/toggleterm.nvim",
        tag = '*', config = function()
        require("toggleterm").setup()
    end}

    --status bar
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- Alpha dashboard
    use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    }


end)
