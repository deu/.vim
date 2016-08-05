" \<ESC> in normal mode clears highlights:
nnoremap \<ESC> :noh<CR>
" Switch between buffers:
noremap <C-H> :bprev<CR>
noremap <C-L> :bnext<CR>
" Cut/copy/paste to/from the system's clipboard:
noremap <C-S-d> "+d
noremap <C-S-y> "+y
noremap <C-S-p> <ESC>"+pa
" Toggle the YankRing:
nnoremap \y :YRShow<CR>
" Toggle gitgutter:
nnoremap \+ :GitGutterToggle<CR>
