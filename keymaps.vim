let mapleader = '\' " The default, but let's be sure.

" QQ quits all:
nnoremap QQ :qa<CR>

" Move around within wrapped lines but keep the original Nj/k behaviour:
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

" <Leader><ESC> in normal mode clears highlights:
nnoremap <Leader><ESC> :noh<CR>

" Tabs:
noremap <Leader><C-T> :tabnew<CR>
noremap <Leader><C-W> :tabclose<CR>
noremap <C-H> :tabprevious<CR>
noremap <C-L> :tabnext<CR>
noremap <Leader><C-H> :-tabmove<CR>
noremap <Leader><C-L> :+tabmove<CR>

" Cut/copy/paste to/from the system's clipboard:
noremap <Leader><C-d> "+d
noremap <Leader><C-y> "+y
noremap <Leader><C-p> <ESC>"+pa

" CtrlP
nnoremap <Tab> :CtrlPBuffer<CR>
nnoremap <C-@> :CtrlP<CR>

" Toggle the YankRing:
nnoremap <Leader>y :YRShow<CR>

" Toggle gitgutter:
nnoremap <Leader>+ :GitGutterToggle<CR>

" Toggle undotree
nnoremap <Leader>u :UndotreeToggle<CR>
