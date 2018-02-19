"echo ">^.^<"
"echom $f
set autoread
set cc=79
set nu
set so=7
set tabstop=8
set shiftwidth=4   
set expandtab 
set smarttab        " When on, a <Tab> in front of a line inserts blanks
                    " according to 'shiftwidth'. 'tabstop' is used in other
                    " places. A <BS> will delete a 'shiftwidth' worth of space
                    " at the start of the line.
 
set showcmd         " Show (partial) command in status line.

set showmatch       " When a bracket is inserted, briefly jump to the matching
                    " one. The jump is only done if the match can be seen on the
                    " screen. The time to show the match can be set with
                    " 'matchtime'.
set autoindent      " Copy indent from current line when starting a new line
                    " (typing <CR> in Insert mode or when using the "o" or "O"
                    " command).
 
set textwidth=79    " Maximum width of text that is being inserted. A longer
                    " line will be broken after white space to get this width.
 
set ruler           " Show the line and column number of the cursor position,
                    " separated by a comma.

set background=dark " When set to "dark", Vim will try to use colors that look
                    " good on a dark background. When set to "light", Vim will
                    " try to use colors that look good on a light background.
                    " Any other value is illegal.
 
set mouse=a         " Enable the use of the mouse.
syntax on
set spell spelllang=en_ca

" the following lines from Dr. Diamond's cheat sheet
set vb lbr wrap mh ai si et sta fen spr nohls is ru lz sc cul
set siso=5 history=200 backspace=eol,start,indent

map <F2> :call VimuxRunCommand("make")<cr>

"inoremap <c-u> <esc>vbUea

iab fc# /* <cr>
 \Name:<tab><cr>
 \Purpose:<tab><cr>
 \Arguments:<tab><cr>
 \Output:<tab><cr>
 \Modifies:<tab><cr>
 \Returns:<tab><cr>
 \Assumptions:<tab><cr>
 \Bugs:<tab><cr>
 \Notes:<tab><cr>/<esc>?Name<cr>A


inoremap jk <esc>

set nocompatible              " be improved, required
filetype off                  " required

set rtp+=~/.vim/autoload/pathogen.vim
execute pathogen#infect()

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'valloric/youcompleteme'
Plugin 'jiangmiao/auto-pairs'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'benmills/vimux'
call vundle#end()            " required
filetype plugin indent on    " required
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_tex_checkers = ['lacheck']
let g:syntastic_quiet_messages = { "regex": [
        \ '\mpossible unwanted space at "{"',
        \ ] }
Helptags

