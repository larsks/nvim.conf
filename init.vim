" the kitty terminal does not support background color erase properly
" let &t_ut=''

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
au BufRead */COMMIT_EDITMSG setlocal ft=markdown tw=75
au! BufRead,BufNewFile *.pp setfiletype puppet
au! BufRead,BufNewFile Puppetfile setfiletype ruby
au! BufRead,BufNewFile *.s setlocal ft=asm_ca65
au FileType go autocmd BufWritePre <buffer> GoFmt
au FileType python autocmd BufWritePre <buffer> Black

runtime! abbrevations.vim

silent! helptags ALL

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

colorscheme pencil

" Kitty terminal doesn't seem to like undercurl
" hi SpellBad term=underline cterm=underline

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

if exists('g:started_by_firenvim')
  set laststatus=0
endif

lua require('init')
