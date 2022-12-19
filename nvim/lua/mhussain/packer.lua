vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
      'EdenEast/nightfox.nvim',
      as = 'nightfox',
      config = function()
          vim.cmd('colorscheme nightfox')
      end
  })
end)

