" Contains common key bindings that I want to keep in sync between nvim/IdeaVim/vim 
let mapleader=" "

set background=dark

syntax enable
colorscheme slate

set nocompatible                                   " Use Vim defaults ( much better! )

set gfn=Courier:h12                                " use this font.

"set autochdir
set backspace=indent,eol,start                     " backspace work right

set iskeyword+=-
"set iskeyword+=$,@,%,#,-                           " these don't act as word separators
set mouse=a                                        " enable mouse

set noerrorbells                                   " no sound! *BLING* *BLING* *BLING* SUCKS!
set belloff=all

set wildmenu                                       " wild menu file listing                                     
set wildignore=*.exe,*.jpg,*.gif,*.png,*\\node_modules\\*   " ignore these files in wild menu.

"set cursorcolumn
"set cursorline
set incsearch                                      " 
set laststatus=2                                   " show status bar always.

set statusline=%<%f%h%m%r%=%b\ 0x%B\ \ %l,%c%V\ %P " Shows the char code of the curent char
 
set hlsearch                                       " high light the search

set timeoutlen=500

"This sets the cursor line when in insert mode and removes it when out of
"insert mode.
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul


set lazyredraw                                     " don't redraw during macros. 

set number
set relativenumber
set ruler

set showcmd                                        " shows the current command.
set showmatch                                      " cause cursor to show bracket matching

set ignorecase                                     " case insensitive
set infercase                                      " try to guess the case if caps lock is on..
set nowrap    

set smartcase

set guioptions-=T                                  "Get rid  of the tool bar in visual mac vim 
set vb t_vb=                                       "Keeps vim from beeping when a command doesn't work, just flashes

set expandtab                                      " no real tabs.
set shiftwidth=2
set softtabstop=2
set tabstop=2                                      "Make tabs into spaces x spaces 

" Indent to nearest tabstop
set shiftround

set hidden                                         "Lets you switch buffers without saving.
  
" Indentions
set autoindent
set smartindent
filetype plugin indent on

set clipboard=unnamed
" 
" " Make command mode a bit more responsive to typical 
" " editing/formating keys, like space backspace and Enter
" " :map <Space> i <Esc>l
" " :map <Backspace> "_dh
" " :map <PageDown> <C-d>
" " :map <PageUp> <C-b>
" " :map <CR> i <CR><Esc>
" 
" "disable help typing help is not such a burden.
" :map <F1> <Esc>
" :imap <F1> <Esc>
" 
" :nnoremap ; :
" 
" "Vimdiff Ignore white spaces
" "set diffopt+=iwhite
" 
" "Lets you pass a visual block to perl titdy by pushgin "="
" " autocmd Filetype perl :set equalprg=perltidy
" 
" 
" " Make p in Visual mode replace the selected text with the "" register.
" vnoremap p <Esc>:let current_reg = @"<CR>gvs<C-R>=current_reg<CR><Esc>
" 
" " Make tab in v mode work like I think it should (keep highlighting):
" " vmap <tab> >gv
" " vmap <s-tab> <gv
" 
" 
" " Undo in insert mode.
" imap <c-z> <c-o>u
" 
" " Turn on and off NERDTree 
" " normal nerd tree.
" "map <F5> :NERDTreeToggle<CR><ESC>
"   
" 
" " Toggle nerd tree with vim-nerdtree-tabs
" " map <F7> :NERDTreeTabsToggle<CR><ESC>
" 
" "autocmd BufNewFile,BufRead *.java imap . .<c-x><c-o>
" 
" 
" "autocmd BufNewFile,BufRead *.java imap <c-Space> blah<c-x><c-u>
" imap <c-Space> blah<c-x><c-u>
" 
" 
" 
" 
" "Ruby syntax settings see:
" "https://github.com/vim-ruby/vim-ruby/blob/master/doc/ft-ruby-syntax.txt 
" let ruby_space_errors = 1
" let ruby_spellcheck_strings = 1
" 
" " Add ruby syntax support for casper reports.
" au BufNewFile,BufRead *.casper set filetype=ruby
" au BufNewFile,BufRead *.task set filetype=ruby
" 
" 
" set spell
" highlight clear SpellBad
" 
" "highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
" highlight SpellBad term=underline cterm=underline
" highlight clear SpellCap  " words that normally should be capitalized
" highlight SpellCap term=NONE cterm=NONE
" highlight clear SpellRare " words that are rarely used. 
" highlight SpellRare term=NONE cterm=NONE
" highlight clear SpellLocal
" highlight SpellLocal term=NONE cterm=NONE
"
" noremap <Leader>w :update<CR>
