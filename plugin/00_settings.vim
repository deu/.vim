" === General settings
set nocompatible           " Disable VI compatibility.
set number                 " Line numbers.
set cursorline             " Highlight the current line.
"set colorcolumn=80         " Line length marker.
set laststatus=2           " Always show the statusline.
set hidden                 " Don't unload abandoned buffers.
set wildmenu               " Turn on the wildmenu...
set wildmode=longest:full  " ...and make it behave like BASH.
set completeopt-=preview   " Disable the autocompletion's preview window.
set noswapfile             " Disable the creation of .swp files.
syntax on                  " Syntax hightlighting.
filetype plugin indent on  " Filetype plugins.

" === Indentation
set expandtab      " <TAB> inserts whitespaces.
"set noexpandtab    " <TAB> inserts tabs.
set tabstop=4      " How long an actual tab is.
set shiftwidth=4   " Length of every indentation step.
set softtabstop=4  " Number of whitespaces VIM sees as a tab.
set autoindent     " Automatic indentation (duh).
" Use actual tabs when editing HTML and Makefiles:
autocmd FileType html,make setlocal noexpandtab
" Remove trailing whitespaces when saving certain filetypes:
autocmd FileType c,cpp,python,perl,php,html,css autocmd BufWritePre <buffer> :%s/\s\+$//e

" === Search
set hlsearch    " Highlight search results.
set ignorecase  " Ignore case...
set smartcase   " ...but don't do that when the search starts in upper case.

" === Aestetics
if &t_Co == 256 || has("gui_running")
    colorscheme xoria256mod
    " Display tabs:
    "set list listchars=tab:►―
else
    colorscheme strange
endif
if has("gui_running")
    set lines=50 columns=90  " Set the window size.
    set guifont="Envy Code R 10"
    " Disable the cursor blinking when not in insert mode:
    let &guicursor = substitute(&guicursor, 'n-v-c:', '&blinkon0-', '')
    " Remove the menu bar and the toolbar:
    set guioptions-=m
    set guioptions-=T
endif
