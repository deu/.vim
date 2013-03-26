let g:NERDTreeWinSize=30

" === Custom
" Toggle the NERDTree and automatically resize the window:
let s:openTree=0
function! config#nerdtree#nerdyToggle()
    if (s:openTree==0)
        NERDTreeToggle
        let s:openTree=1
        set columns+=30
    else
        NERDTreeToggle
        let s:openTree=0
        set columns-=30
    endif
endfunction
