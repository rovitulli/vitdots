augroup HelpInTabs
  autocmd!
  autocmd BufEnter  *.txt   call HelpInNewTab()
augroup END

function! HelpInNewTab ()
  if &buftype == 'help'
    execute "normal \<C-W>T"
  endif
endfunction

set backspace=indent,eol,start
set number
set ruler
set ignorecase
set smartcase
set incsearch
set hlsearch
set nocompatible
set autoindent
set fileencoding=utf-8
set gdefault
set visualbell
set mouse=a
set expandtab
set shiftwidth=2
set softtabstop=2

let NERDTreeShowHidden=1


nmap <silent>  <BS>  :nohlsearch<CR>
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>
vmap <C-c> "*y     " Yank current selection into system clipboard
nmap <C-c> "*Y     " Yank current line into system clipboard (if nothing is selected)
nmap <C-v> "*p     " Paste from system clipboard

execute pathogen#infect() 
syntax enable 
set background=dark
colorscheme solarized

filetype on
filetype indent on
filetype plugin on
call pathogen#infect()

map <C-n> :NERDTreeToggle<CR>
set runtimepath^=~/.vim/bundle/ctrlp.vim

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_ruby_checkers          = ['rubocop']
let g:syntastic_ruby_rubocop_exec      = '/Users/rodrigovitulli/.rbenv/shims/rubocop'
