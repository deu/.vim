" \<ESC> in normal mode clears highlights:
nnoremap \<ESC> :noh<CR>
" Switch between buffers:
noremap <C-H> :bprev<CR>
noremap <C-L> :bnext<CR>
" Cut/copy/paste to/from the system's clipboard:
noremap ùd "+d
noremap ùy "+y
noremap ùp "+p
noremap ùùd "+dd
noremap ùùy "+yy
" Toggle the YankRing:
nnoremap \y :YRShow<CR>
" Toggle gitgutter:
nnoremap \+ :GitGutterToggle<CR>
