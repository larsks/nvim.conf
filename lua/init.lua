local o = vim.opt
local g = vim.g

o.list = true
o.listchars       = {
    tab     = '»·',
    trail   = '•',
    extends = '…',
    nbsp    = '‗',
}

o.autoindent = true
o.compatible = false
o.hidden = false
o.hlsearch = false
o.incsearch = true
o.ruler = true
o.showmatch = true
o.wrap = false

o.bg = 'dark'
o.cmdheight = 2
o.colorcolumn = '80'
o.concealcursor = 'c'
o.laststatus = 2
o.mousemodel = 'popup_setpos'
o.shada = [[!,'100,<1000,s10,h,r/tmp]]
o.showtabline = 2
o.tabpagemax = 100
o.updatetime = 100

-- in init.vim this was set wildignore += "*.mpy", but since wildignore
-- appears to default to the empty string this should be fine.
o.wildignore = "*.mpy"

require('plugins')

-- copy-paste from https://oroques.dev/notes/neovim-init/
local ts = require 'nvim-treesitter.configs'
ts.setup {ensure_installed = 'maintained',
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	indent = {enable = true},
}
