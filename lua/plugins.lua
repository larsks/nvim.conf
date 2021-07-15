return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'dense-analysis/ale'
  use 'tpope/vim-fugitive'
  use 'Yggdroot/indentline'
  use 'tpope/vim-vinegar'
  use 'mhinz/vim-signify'
  use 'junegunn/vim-easy-align'
  use 'junegunn/goyo.vim'
  use 'junegunn/limelight.vim'
  use 'vim-airline/vim-airline'
  use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }
  use 'fatih/vim-go'
end)
