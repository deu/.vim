" <ESC> in normal mode clears highlights:
nnoremap <ESC> :noh<ESC>
" Switch between buffers:
noremap <C-H> :bprev<CR>
noremap <C-L> :bnext<CR>
" Easily toggle the YankRing:
nnoremap \\ :YRShow<CR>
