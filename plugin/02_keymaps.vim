" Adjust the window size:
nnoremap <F3> :set columns-=5<CR>
nnoremap <F4> :set columns+=5<CR>
nnoremap <LEADER><F3> :set columns=90<CR>
nnoremap <LEADER><F4> :set columns=190<CR>
nnoremap <S-F3> :set lines=50<CR>
nnoremap <S-F4> :set lines=65<CR>
" <ESC> in normal mode clears highlights and shows the buftabs bar:
nnoremap <ESC> :noh<CR>:call Buftabs_enable()<CR>:call Buftabs_show(-1)<CR><ESC>
" Switch between buffers:
noremap <C-H> :bprev<CR>
noremap <C-L> :bnext<CR>
noremap <C-LEFT> :bprev<CR>
noremap <C-RIGHT> :bnext<CR>
" Easily toggle the NERDTree:
"nnoremap <F1> :call config#nerdtree#nerdyToggle()<CR>
nnoremap <F1> :NERDTreeToggle<CR>
" Easily toggle the YankRing:
nnoremap <F2> :YRShow<CR>
