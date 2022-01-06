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
  use 'tpope/vim-vinegar'
  use 'vim-airline/vim-airline'
  use 'wbthomason/packer.nvim'
  use 'maxbane/vim-asm_ca65'
  use 'dhruvasagar/vim-table-mode'
  use { 'junegunn/fzf', run = function() vim.fn['fzf#install'](0) end }
  use 'junegunn/fzf.vim'
  use 'psf/black'
  use 'neomake/neomake'
  use 'tmhedberg/SimpylFold'
end)
