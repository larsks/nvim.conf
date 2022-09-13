return require('packer').startup(function()
  --  use 'dense-analysis/ale'
  use 'fatih/vim-go'
  use {
      'glacambre/firenvim',
      run = function()
          vim.fn['firenvim#install'](0)
      end
  }
  use 'junegunn/goyo.vim'
  use 'junegunn/limelight.vim'
  use 'junegunn/vim-easy-align'
  use {
      'lewis6991/gitsigns.nvim',
      config = function()
          require('gitsigns').setup{
              signs = {
                add          = {hl = 'GitSignsAdd'   , text = '+', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
                change       = {hl = 'GitSignsChange', text = '!', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
                delete       = {hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
                topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
                changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
              }
          }
      end
  }
  use 'lukas-reineke/indent-blankline.nvim'
  use 'neovim/nvim-lspconfig'
  use {
      'f-person/git-blame.nvim',
      config = function()
        vim.g.gitblame_enabled = 0
      end
  }

  -- vim-vinegar enhances the file selection mode. Press "-" in a buffer to
  --  go to a list of files in the same directory.
  use 'tpope/vim-vinegar'
  -- use 'vim-airline/vim-airline'
  use {
      'nvim-lualine/lualine.nvim',
      config = function()
        require('lualine').setup()
      end,
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'RRethy/nvim-base16'
  use 'preservim/vim-colors-pencil'

  use 'wbthomason/packer.nvim'
  use 'maxbane/vim-asm_ca65'
  use 'dhruvasagar/vim-table-mode'
  use {
      'junegunn/fzf',
      run = function()
          vim.fn['fzf#install'](0)
      end
  }
  use 'junegunn/fzf.vim'
  use 'psf/black'
  --  use 'neomake/neomake'
  --  use 'tmhedberg/SimpylFold'
  -- use {'ms-jpq/coq_nvim', branch='coq'}
  -- use {'ms-jpq/coq.artifacts', branch='artifacts'}
  --
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

end)
