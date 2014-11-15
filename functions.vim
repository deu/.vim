function! StripTrailingSpaces()
    silent! %s/\s\+$
endfunction
command! StripTrailingSpaces call StripTrailingSpaces()
