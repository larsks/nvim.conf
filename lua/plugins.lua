return require('packer').startup(function()
  use 'dense-analysis/ale'
  use 'fatih/vim-go'
  use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }
  use 'junegunn/goyo.vim'
  use 'junegunn/limelight.vim'
  use 'junegunn/vim-easy-align'
  use 'lewis6991/gitsigns.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'neovim/nvim-lspconfig'
  use 'nvim-treesitter/nvim-treesitter'
  use 'tpope/vim-vinegar'
  use 'vim-airline/vim-airline'
  use 'wbthomason/packer.nvim'
end)
