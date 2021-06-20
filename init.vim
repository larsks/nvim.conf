" the kitty terminal does not support background color erase properly
let &t_ut=''

set bg=dark
	\ nohlsearch
	\ bs=indent,eol,start
	\ ai
	\ ruler
	\ nowrap
	\ cmdheight=2
	\ laststatus=2
	\ showtabline=2
	\ showmatch
	\ guioptions+=f
	\ guioptions-=m
	\ incsearch
	\ mousemodel=popup_setpos
	\ colorcolumn=80
	\ nocompatible
	\ tabpagemax=100
	\ concealcursor=c
	\ updatetime=100

" stop trying to open .mpy files
set wildignore+=*.mpy

syntax on

" read/write a .viminfo file, don't store more than 50 lines of registers
set viminfo='20,\"50

filetype on
filetype plugin on
filetype indent on

" Make
map MM :make<cr>
map MK :make clean<cr>
map ]l :lnext<cr>
map [l :lprev<cr>

au BufRead *.ksy setlocal ft=yaml
au BufRead *.md setlocal ft=markdown
au BufRead *.ldg setlocal ft=ledger
au BufRead *superuser.com* setlocal ft=markdown
au BufRead *serverfault.com* setlocal ft=markdown
au BufRead *stackoverflow.com* setlocal ft=markdown
au BufRead *stackexchange.com* setlocal ft=markdown
au BufRead *ask.openstack.org* setlocal ft=markdown
au BufRead *ask.fedoraproject.org* setlocal ft=markdown
au BufRead *github.com* setlocal ft=markdown
au BufRead */COMMIT_EDITMSG setlocal ft=markdown
au! BufRead,BufNewFile *.pp setfiletype puppet
au! BufRead,BufNewFile Puppetfile setfiletype ruby
au! BufRead,BufNewFile *.s setlocal ft=asm_ca65
au FileType go autocmd BufWritePre <buffer> GoFmt

runtime! abbrevations.vim

if has('nvim')
    let s:editor_root=expand("~/.config/nvim")
else
    let s:editor_root=expand("~/.vim")
endif

packloadall
silent! helptags ALL

let g:indentLine_concealcursor = 'nc'
let g:indentLine_conceallevel = 2
let g:indentLine_char = "┆"

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

set bg=light
colorscheme typewriter

if has("gui")
	set
		\ guifont=Input\ Mono\ Thin\ 14
		\ guioptions-=r
		\ guioptions-=M
		\ guioptions-=T

	function GuiSettings()
		let g:ale_sign_column_always = 1

		set
			\ columns=80
			\ lines=40
	endfunction

	au GuiEnter * call GuiSettings()
endif

" Kitty terminal doesn't seem to like undercurl
hi SpellBad term=underline cterm=underline

if &term =~ '^tmux' || &term =~ '^screen' || &term =~ '^xterm'
  let &t_BE="\<Esc>[?2004h"
  let &t_BD="\<Esc>[?2004l"
  let &t_PS="\<Esc>[200~"
  let &t_PE="\<Esc>[201~"
endif

let g:ledger_bin = 'ledger'
let g:ledger_fold_blanks = 1

let g:firenvim_config = { 
    \ 'localSettings': {
        \ '.*': {
            \ 'cmdline': 'neovim',
            \ 'content': 'text',
            \ 'priority': 0,
            \ 'selector': 'textarea',
            \ 'takeover': 'never',
        \ },
    \ }
\ }

let fc = g:firenvim_config['localSettings']
