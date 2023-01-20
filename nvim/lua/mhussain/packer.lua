vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'
  use 'tpope/vim-eunuch'
  use 'tpope/vim-unimpaired'
  use 'tpope/vim-sleuth'
  use 'tpope/vim-repeat'
  use 'farmergreg/vim-lastplace'
  use 'nelstrom/vim-visual-star-search'
  use {
      'windwp/nvim-autopairs',
      config = function()
          require('nvim-autopairs').setup()
      end,
  }
  
  use {
    'karb94/neoscroll.nvim',
    config = function ()
        require('neoscroll').setup()
    end
  }
  
  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'sickill/vim-pasta',
    config = function ()
        vim.g.pasta_disabled_filetypes = { 'fugitive' }
    end
  }

  use {
    'AndrewRadev/splitjoin.vim',
    config = function ()
        vim.g.splitjoin_html_attributes_bracket_on_new_line = 1
        vim.g.splitjoin_trailing_comma = 1
        vim.g.splitjoin_php_method_chain_full = 1
    end
  }
  use {
      'Exafunction/codeium.vim',
      config = function ()
          -- Change '<C-g>' here to any keycode you like.
          vim.keymap.set('i', '<C-g>', function ()
              return vim.fn['codeium#Accept']()
          end, { expr = true })
      end
  }

  use {
      'EdenEast/nightfox.nvim',
      as = 'nightfox',
      config = function()
          vim.cmd('colorscheme nightfox')
      end
  }

  use {
      'VonHeikemen/lsp-zero.nvim',
      requires = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},
          {'williamboman/mason.nvim'},
          {'williamboman/mason-lspconfig.nvim'},

          -- Autocompletion
          {'hrsh7th/nvim-cmp'},
          {'hrsh7th/cmp-buffer'},
          {'hrsh7th/cmp-path'},
          {'saadparwaiz1/cmp_luasnip'},
          {'hrsh7th/cmp-nvim-lsp'},
          {'hrsh7th/cmp-nvim-lua'},

          -- Snippets
          {'L3MON4D3/LuaSnip'},
          {'rafamadriz/friendly-snippets'},
      }
  }
end)


