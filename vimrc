
"     ____              __           _                     ___  __ __
"    / __/_______  ____/ /_____   __(_)___ ___  _________ |__ \/ // /
"   / /_/ ___/ _ \/ __  / ___/ | / / / __ `__ \/ ___/ __ \__/ / // /_
"  / __/ /  /  __/ /_/ (__  )| |/ / / / / / / / /__/ /_/ / __/__  __/
" /_/ /_/   \___/\__,_/____/ |___/_/_/ /_/ /_/\___/ .___/____/ /_/   


" Places for your personal initializations:
"    Unix            $HOME/.vimrc or $HOME/.vim/vimrc
"    OS/2            $HOME/.vimrc, $HOME/vimfiles/vimrc
"                    or $VIM/.vimrc (or _vimrc)
"    MS-Windows      $HOME/_vimrc, $HOME/vimfiles/vimrc
"                    or $VIM/_vimrc
"    Amiga           s:.vimrc, home:.vimrc, home:vimfiles:vimrc
"                    or $VIM/.vimrc

"  The files are searched in the order specified above and only the first
"  one that is found is read.

"  RECOMMENDATION: Put all your Vim configuration stuff in the
"  $HOME/.vim/ directory ($HOME/vimfiles/ for MS-Windows). That makes it
"  easy to copy it to another system.


set directory=~/.vim/dirs/tmp     " directory to place swap files in
set backup                        " make backup files
set backupdir=~/.vim/dirs/backups " where to put backup files
set undofile                      " persistent undos - undo after you re-open the file
set undodir=~/.vim/dirs/undos
set viminfo+=n~/.vim/viminfo

" store yankring history file there too
let g:yankring_history_dir = '~/.vim/'  
if !isdirectory(&backupdir)
    call mkdir(&backupdir, "p")
endif
if !isdirectory(&directory)
    call mkdir(&directory, "p")
endif
if !isdirectory(&undodir)
    call mkdir(&undodir, "p")
endif

syntax on
filetype plugin indent on

set scrolloff=3

" Disable the blinking cursor.
set gcr=a:blinkon0 
set scrolloff=3

" Status bar
set laststatus=2 

" Use modeline overrides
set modeline
set modelines=10

" ============================
" Disable parenthesis matching
" ----------------------------
"let loaded_matchparen = 1
" ============================

set equalalways
"
" Title
set title
set titleold="Terminal"
set titlestring=%F

" Status line
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

set autochdir
autocmd BufEnter * silent! lcd %:p:h

" so vim can receive copy paste from deifferent OS environment
set clipboard=unnamed

" no vi-compatible
set nocompatible 

" always show status bar
set ls=2 

set ruler
set mousemodel=popup

":set lines=70 columns=180

" disable swap file warning
set shortmess+=A 

" or use :se shm-=S for count num character in search
set shortmess-=S 

" set guioptions=egmrti
set guioptions-=m " remove menu bar
set guioptions-=T " remove toolbar
set guioptions-=r " remove right-hand scroll bar
set guioptions-=L " remove left-hand scroll bar

set gfn=Monospace\ 10

" Fix backspace indent
set backspace=indent,eol,start 

" Tabs. May be overriten by autocmd rules
set tabstop=4 

" Tabs. May be overriten by autocmd rules
set softtabstop=0 

set shiftwidth=4
set expandtab
set bomb
set ttyfast

" Enable hidden buffers
set hidden 

" Searching
set hlsearch 
set incsearch

set ignorecase
set smartcase

set wildmode=list:longest

"set spell=en_us
"set spell

" split below and right feels more natural
set splitbelow
set splitright

set encoding=utf-8

set is

" hybrid line numbers
set number 

"set number relativenumber

"" turn relative line numbers off
"set norelativenumber 

set autoindent " Keep indentation from previous line
set smartindent " Automatically inserts indentation in some cases
set cindent " Like smartindent, but stricter and more customisable

set mouse=a

set ignorecase!

set nowrap " no wrapping

set bs=2 " allow backspace immediately after insert

"" Horizontal and Vertical line visibility
"set cursorcolumn
"set cursorline

set fileformats=unix,dos,mac

set completeopt-=preview " Disabled by default because preview makes the window flicker

"" Set leader to , use this for global default
let mapleader =','

"" Set leader to \ or <Space> use have a plugin you created
"let localmapleader = '\<Space>'

let g:netrw_dirhistmax=0 "disable it from creating netrw file
let no_buffers_menu=1


set ai


" ==================================
" -------- netrw settings -----------
" -----------------------------------
let g:netrw_banner = 1
let g:netrw_liststyle = 3 
let g:netrw_browse_split = 3 
let g:netrw_altv= 1
let g:netrw_winsize = 24 

" -----------------------------------
" netrw auto create side navigation just like :Lex command ..
" -----------------------------------
augroup ProjectDrawer
autocmd!
"autocmd VimEnter * :Vexplore
autocmd VimEnter * :cd /c/wamp64/www/devs | :Lex
augroup END
" ===================================




map <S-Space> <C-w>w 

map <C-Space> <c-w>h<c-w>h<c-w>h<c-w>h<c-w>h<c-w>h<c-w>h<c-w>h<c-w>h<c-w>h<c-w>h<c-w>h<c-w>h<c-w>h<c-w>h<c-w>h<c-w>h<c-w>h<c-w>h<c-w>h
tmap <C-Space> <c-w>h<c-w>h<c-w>h<c-w>h<c-w>h<c-w>h<c-w>h<c-w>h<c-w>h<c-w>h<c-w>h<c-w>h<c-w>h<c-w>h<c-w>h<c-w>h<c-w>h<c-w>h<c-w>h<c-w>h

map <C-i> :bn<CR>
map <C-u> :bp<CR>


nmap ,cgn cgn
set noequalalways

"" inoremap " ""<left>
"" inoremap ' ''<left>
"" inoremap ( ()<left>
"" inoremap [ []<left>
"" inoremap { {}<left>
"" inoremap {<CR> {<CR>}<ESC>O
"" inoremap {;<CR> {<CR>};<ESC>O


vmap ,k zfzc
nmap ,k zc
nmap ,kk zo

nmap ,pp :qall<CR>
nmap ,ipp :qall!<CR>

map <C-S-k> :resize +10<CR>
map <C-S-j> :resize -10<CR>
map <C-k> :vertical resize +10<CR>
map <C-j> :vertical resize -10<CR>
map <Backspace> :e#<CR>
nmap ,<Space> :bd<CR>
nmap ,ss :w<CR>

map <S-Tab> :tabp<CR>
tmap <S-Tab> <C-w>:tabp<CR> 

map <Tab> :tabn<CR>
tmap <Tab> <C-w>:tabn<CR> 


tmap <S-Space> <C-w>w 
tmap <C-i> <C-w>:bn<CR> 
tmap <C-u> <C-w>:bp<CR> 
tmap <C-S-Space> <C-w>:tabr<CR>
tmap <C-S-k> <C-w>:resize +10<CR>
tmap <C-S-j> <C-w>:resize -10<CR>
tmap <C-k> <C-w>:vertical resize +10<CR>
tmap <C-j> <C-w>:vertical resize -10<CR>
tmap ,te <C-w>:term<CR>

nmap <C-S-Space> :tabr<CR>
nmap ,tc :set shell=/c/Windows/System32/cmd<CR>
nmap ,tb :set shell=/usr/bin/bash<CR>
nmap ,te :term<CR>
nmap ,tn :tabnew<CR>
nmap ,vn :vnew<CR>
nmap ,n :new<CR>
nmap ,vsp :vsp<CR>
nmap ,sp :sp<CR>
nmap ,ff :vimgrep /xxx/gj **/*
nmap ,r :cfdo %s/xxx/xxx/g
nmap ,u :cfdo update<CR>
nmap ,all :wall<CR>
nmap ,rep :%s/xxx/xxx/g
nmap ,bcss :%s/[{;}]/&\r/g|norm! =gg
nmap ,vh :e /c/wamp64/bin/apache/apache2.4.41/conf/extra/httpd-vhosts.conf<CR>
nmap ,h :e /c/Windows/System32/drivers/etc/hosts<CR>
nmap ,sql :r!start http://localhost/phpmyadmin<CR>
nmap ,o <S-$>
nmap ,i 0
nmap ,vim :find ~/.vim/vimrc<CR>
nmap ,bash :edit ~/.bashrc<CR>
nmap ,vf :r!source ~/.fzf.bash<CR>
nmap ,ls :r!ls -la<CR>
nmap ,l :ls<CR>
nmap ,vr :so ~/.vim/vimrc<CR>
nmap ,cp :copen<CR>
nmap ,mm :set modifiable<CR> 
nmap ,bc :r!rm ~/.bashrc<CR> 

imap ,php <?php  ?><Esc>hhh<Esc><Esc>a
imap jj <Esc>
imap ,ss <Esc>:w<CR>

vmap ,iii <Esc>`>a"<Esc>`<i"<Esc>
vmap ,ii <Esc>`>a'<Esc>`<i'<Esc>
vmap ,pp <Esc>`>a</p><Esc>`<i<p><Esc>
vmap ,ci <Esc>`>a  */<Esc>`<i/*  <Esc>

vmap ,o <S-$>
vmap ,i 0

" :ab brck {} 

function! ScrollStop(key)
    if &buftype !=# "terminal"
        execute 'normal! ' . nr2char(and(char2nr(a:w), "0b0011111"))
    endif
endfunction

function! Cb()
    call append(1, "function wamp {")
    call append(2, "    cd /c/wamp64/www/devs")
    call append(3, "}")
    call append(4, "")
    call append(5, "function fred {")
    call append(6, "    source ~/.fzf.bash")
    call append(7, "    vim -o `fzf`")
    call append(8, "}")
    call append(9, "set -o vi")
endfunction
autocmd BufReadPre .bashrc call Cb()

function! CallBashrc()
    :cd ~/
    :r!touch .bashrc
    :e .bashrc
    :w
    :r!source ~/.bashrc
    :bd
endfunction
nmap ,bs :call CallBashrc() 

set background=dark 
set t_Co=256

"if has('termguicolors')
"    set termguicolors
"endif


"call plug#begin("~/.config/nvim/plugged")
"call plug#begin(stdpath('data'))
call plug#begin("~/.vim/plugged")

Plug 'ap/vim-css-color'
Plug 'scrooloose/syntastic'  

Plug 'vim-airline/vim-airline' 
Plug 'vim-airline/vim-airline-themes' 

Plug 'Yggdroot/indentLine' 

Plug 'neoclide/coc.nvim', {'branch': 'release'} 

call plug#end()



" ====================
" Gruvbox color scheme
" --------------------
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'soft'
" ====================


" ================================================
"  P L U G I N S 
" ================================================

" For autoCompletion use the follow Plugins below:
" -------------------------------------------------------

" --------------------------
" Phase 1 of autocompletion
" --------------------------

" Plug 'shougo/neocomplcache.vim'  

" --------------------------
" Phase 2 of autocompletion
" --------------------------

" Plug 'Shougo/deoplete.nvim' " Async autocompletion
" Plug 'deoplete-plugins/deoplete-jedi' " Completion from other opened files
" Plug 'davidhalter/jedi-vim' " jedi-vim - awesome Python autocompletion with VIM

" --------------------------
" Phase 3 of autocompletion
" --------------------------

" Plug 'neoclide/coc.nvim', {'branch': 'release'} 

" ---------------------------------------------------------
" Always use this when using Phase 1 & 2 of autocompletion
" ---------------------------------------------------------

" Plug 'marcweber/vim-addon-mw-utils'
" Plug 'tomtom/tlib_vim' 
" Plug 'honza/vim-snippets' 
" Plug 'garbas/vim-snipmate' 

" ================================================




" ================================================
"  O P T I O N A L    P L U G I N S 
" ================================================


" Plug 'airblade/vim-gitgutter'
" Plug 'Raimondi/delimitMate' 
" Plug 'majutsushi/tagbar' 
" Plug 'arnaud-lb/vim-php-namespace'
" 
" Plug 'preservim/nerdtree'
" Plug 'vim-scripts/grep.vim'  
" Plug 'gorodinskiy/vim-coloresque'  
" Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp']} 
" Plug 'hail2u/vim-css3-syntax' 
"
" Plug 'tpope/vim-haml' 
" Plug 'tpope/vim-rails'
" Plug 'tpope/vim-eunuch'
" Plug 'tpope/vim-bundler'
" Plug 'tpope/vim-commentary'
" Plug 'tpope/vim-surround'
" Plug 'tpope/vim-dispatch'
" Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-fugitive' " Git integration
"
" Plug 'jelera/vim-javascript-syntax'
" Plug 'Townk/vim-autoclose' " Automatically close parenthesis, etc
" Plug 'valloric/youcompleteme'
" Plug 'cdelledonne/vim-cmake'
" Plug 'fisadev/fisa-vim-config'
" Plug 'fisadev/vim-isort' " Automatically sort python imports
" Plug 'fisadev/FixedTaskList.vim' " Pending tasks list
" Plug 'fisadev/fisa-vim-colorscheme' " A couple of nice colorschemes
" Plug 'craigemery/vim-autotag'
" Plug 'mileszs/ack.vim' " Ack code search (requires ack installed in the system)
" Plug 'epilande/vim-es2015-snippets'
" Plug 'epilande/vim-react-snippets'
" Plug 'mattn/emmet-vim' " Generate html in a simple way
" Plug 'arielrossanigo/dir-configs-override.vim' " Code commenter
" Plug 'ap/vim-css-color'
" Plug 'flazz/vim-colorschemes'
" Plug 'lilydjwg/colorizer' " Paint css colors with the real color
" Plug 'pangloss/vim-javascript'
" Plug 'godlygeek/tabular'
" Plug 'ervandew/supertab'
" Plug 'easymotion/vim-easymotion'
" Plug 'Chiel92/vim-autoformat'
" Plug 'octol/vim-cpp-enhanced-highlight'
" Plug 'jiangmiao/auto-pairs'
" Plug 'lambdalisue/vim-django-support'
" Plug 'alvan/vim-closetag'
" Plug 'styled-components/vim-styled-components'
" Plug 'luochen1990/rainbow'
" Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
" Plug 'wincent/command-t'
" Plug 'leafgarland/typescript-vim'
" Plug 'mxw/vim-jsx'
" Plug 'terryma/vim-multiple-cursors'
" Plug 'zhaocai/GoldenView.Vim'
" Plug 'benmills/vimux'
" Plug 'christoomey/vim-tmux-navigator'
" Plug 'kchmck/vim-coffee-script'
" Plug 'thoughtbot/vim-rspec'
" Plug 'ngmy/vim-rubocop'
" Plug 'plasticboy/vim-markdown'
" Plug 'dyng/ctrlsf.vim' " for really nice search results like in sublime
" Plug 'yonchu/accelerated-smooth-scroll'
" Plug 'vim-scripts/IndexedSearch'
" Plug 'itspriddle/vim-jquery'
" Plug 'junegunn/goyo.vim'
" Plug 'jgdavey/tslime.vim'
" Plug 'nelstrom/vim-textobj-rubyblock'
" Plug 'kana/vim-textobj-user'
" Plug 'ecomba/vim-ruby-refactoring'
" Plug 'vim-ruby/vim-ruby'
" Plug 'cakebaker/scss-syntax.vim'
" Plug 'edkolev/tmuxline.vim'
" Plug 'jparise/vim-graphql'
" Plug 'mhinz/vim-startify'
" Plug 'SirVer/ultisnips'
" Plug 'vim-syntastic/syntastic'
" Plug 'w0rp/ale'
" Plug 'vim-scripts/IndexedSearch'
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Code and files fuzzy finder
" Plug 'junegunn/fzf.vim' " Code and files fuzzy finder
" Plug 'roxma/nvim-yarp'
" Plug 'roxma/vim-hug-neovim-rpc' " Python autocompletion
" Plug 'Shougo/context_filetype.vim' " Just to add the python go-to-definition and similar features, autocompletion from this plugin is disabled
" Plug 'sheerun/vim-polyglot' " Better language packs
" Plug 't9md/vim-choosewin' " Window chooser
" Plug 'valloric/MatchTagAlways' " Highlight matching html tags
" Plug 'mhinz/vim-signify' " Git/mercurial/others diff icons on the side of the file lines
" Plug 'vim-scripts/YankRing.vim' " Yank history navigation
" Plug 'neomake/neomake' " Linters
" Plug 'myusuf3/numbers.vim' " Relative numbering of lines (0 is the current line) (disabled by default because is very intrusive and can't be easily toggled on/off. When the plugin is present, will always activate the relative numbering every time you go to normal mode. Author refuses to add a setting to avoid that)
" Plug 'ryanoasis/vim-devicons' " Nice icons in the file explorer and file type status line.
" Plug 'kyazdani42/nvim-web-devicons'

" ================================================






" ================================================
" C O N F I G S 
" ================================================


" ---------
" snipmateg
" ---------

let g:snipMate = { 'snippet_version' : 1 }

" ---------
" c 
" ---------

autocmd FileType c setlocal tabstop=4 shiftwidth=4 expandtab
autocmd FileType cpp setlocal tabstop=4 shiftwidth=4 expandtab


" ---------
" html
" ---------

autocmd Filetype html setlocal ts=2 sw=2 expandtab

" ----------
" javascript 
" ----------

let g:javascript_enable_domhtmlcss = 1
augroup vimrc-javascript
    autocmd!
    autocmd FileType javascript set tabstop=4|set shiftwidth=4|set expandtab softtabstop=4
augroup END

" ---------
" Phyton
" ---------

augroup vimrc-python
    autocmd!
    autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=79
                \ formatoptions+=croq softtabstop=4
                \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
augroup END


" -------------
" indentline 
" -------------

let g:indentLine_setColors = 0
let g:indentLine_char = 'c'
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)
let g:indentLine_bgcolor_term = 202
let g:indentLine_bgcolor_gui = '#FF5F00'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
let g:indentLine_setConceal = 1
let g:indentLine_enabled = 1

" Vim 

let g:indentLine_color_term = 239

" GVim 

let g:indentLine_color_gui = '#A4E57E'

" none X terminal

let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)

" Background (Vim, GVim)

let g:indentLine_bgcolor_term = 202
let g:indentLine_bgcolor_gui = '#FF5F00'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
let g:indentLine_setConceal = 1
let g:indentLine_enabled = 1




" ----------
" Syntastic
" ----------

let g:syntastic_python_checkers=['python', 'flake8']
let g:syntastic_python_checkers=['python', 'pyflakes']
let g:syntastic_python_checkers=['python', 'pylint']
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_tex_checkers = ['lacheck', 'text/language_check']
let g:polyglot_disabled = ['python']

let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'

let g:syntastic_aggregate_errors = 1
let python_highlight_all = 1
let g:syntastic_enable_perl_checker = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0



" ------------
" COC
" ------------

let g:coc_global_extensions = [
            \ 'coc-snippets',
            \ 'coc-pairs',
            \ 'coc-pairs',
            \ 'coc-tsserver',
            \ 'coc-eslint', 
            \ 'coc-prettier', 
            \ 'coc-json', 
            \ 'coc-tabnine', 
            \ ]

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()


" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" ------------
" Vim Airline
" ------------



if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'



let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16_gruvbox_dark_hard'

" ================================================



" ================================================
" N O T E S
" ================================================

" grep -Hnri xxx * | vim - " outside vi command for search and print out in vim part 1
" grep -n -R --exclude-dir=dir xxx * | vim - " outside vi command for search and print out in vim part 2 
" find * | grep xxx.php | vi -
" find * | grep xxx | vi -
" :set termwinkey=<C-L>




" https://raw.githubusercontent.com/fisadev/fisa-vim-config/v12.0.1/config.vim

" autocmd BufRead,BufNewFile * start " insert mode every time you open a file

" sql_mode=NO_ENGINE_SUBSTITUTION // add this code in the my.ini of you
" wamp/mysql to avoid error sql report so the data gets through




" ===========================
" Installing fzf
" ---------------------------

" fzf#install()
" Upgrading fzf

" vim-plug: :PlugUpdate fzf

" ===========================

" ===========================
" Linux Commands to remember
" ---------------------------
"
" set shell=C:\Windows\........
" su - cp24 // cp24 is the root directory
" sudo -s // this goes to the root admin
" Shift colon Ctrl F // this is to get all commands history
" Ctrl w // this is to escape buffer but to use this 

" ===========================



" ==========================
" COC Notes:
" -----------
"
" Examples in COC installing it's independency 

" Install finished
 
" - ✓ coc-snippets Installed extension coc-snippets@2.4.3 at C:\Users\codepen24\.config\coc\extensions\node_modules\coc-snippets
" - ✓ coc-pairs Installed extension coc-pairs@1.3.0 at C:\Users\codepen24\.config\coc\extensions\node_modules\coc-pairs
" - ✓ coc-tsserver Installed extension coc-tsserver@1.8.1 at C:\Users\codepen24\.config\coc\extensions\node_modules\coc-tsserver
" - ✓ coc-eslint Installed extension coc-eslint@1.4.5 at C:\Users\codepen24\.config\coc\extensions\node_modules\coc-eslint
" - ✓ coc-prettier Installed extension coc-prettier@1.1.24 at C:\Users\codepen24\.config\coc\extensions\node_modules\coc-prettier
" - ✓ coc-json Installed extension coc-json@1.3.6 at C:\Users\codepen24\.config\coc\extensions\node_modules\coc-json
" - ✓ coc-tabnine Installed extension coc-tabnine@1.3.4 at C:\Users\codepen24\.config\coc\extensions\node_modules\coc-tabnine


" " Install extensions like:
" " ------------------------
"
" :CocInstall coc-json coc-tsserver
" Or configure language server in coc-settings.json opened by :CocConfig, like:
" 
" {
"   "languageserver": {
"     "go": {
"       "command": "gopls",
"       "rootPatterns": ["go.mod"],
"       "trace.server": "verbose",
"       "filetypes": ["go"]
"     }
"   }
" }
" Run :CocCommand to open commands list.
" 
" tabnine.openConfig: open config file of TabNine.
" Note: to make coc.nvim works better with TabNine, add "ignore_all_lsp": true to config file of TabNine.

" ==========================



" ========================
" Git config bash settings
" ------------------------

" [diff "astextplain"]
" 	textconv = astextplain
" [filter "lfs"]
" 	clean = git-lfs clean -- %f
" 	smudge = git-lfs smudge -- %f
" 	process = git-lfs filter-process
" 	required = true
" [http]
" 	sslBackend = openssl
" 	sslCAInfo = C:/Program Files/Git/mingw64/ssl/certs/ca-bundle.crt
" [core]
" 	autocrlf = true
" 	fscache = true
" 	symlinks = false
" 	useBuiltinFSMonitor = true
" [pull]
" 	rebase = false
" [credential]
" 	helper = manager-core
" [credential "https://dev.azure.com"]
" 	useHttpPath = true
" [init]
" 	defaultBranch = master

" ========================




