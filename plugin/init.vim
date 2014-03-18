" Disable VI compatibility.
set nocompatible

" Function to source configuration files' directories:
function! SourceDir(dir)
    for l:path in split(globpath(a:dir, '*.vim'), "\n")
        execute 'source' fnameescape(l:path)
    endfor
endfunction

" Function to load the plugins (based on sunaku/vim-unbundle):
function! SourceBundles()
    " Register new bundles:
    let l:existing = {} | for l:path in split(&runtimepath, ',') | let l:existing[l:path] = 1 | endfor
    let l:bundles = join(filter(split(globpath(&runtimepath, 'bundle/*' . '/.'), "\n"), '!has_key(l:existing, v:val)'), ',')
    let l:afters = join(filter(split(globpath(l:bundles, 'after/.'), "\n"), '!has_key(l:existing, v:val)'), ',')
    let &runtimepath = join(filter([l:bundles, &runtimepath, l:afters], '!empty(v:val)'), ',')
    " Create missing helptags for documentation:
    for l:path in split(globpath(l:bundles, 'doc/.'), "\n")
        if filewritable(l:path) == 2 && empty(glob(l:path . '/tags*'))
            execute 'helptags' fnameescape(l:path)
        endif
    endfor
    " Source the plugins:
    for l:plugin in filter(split(globpath(l:bundles, 'plugin/**/*.vim'), "\n"), '!isdirectory(v:val)')
        execute 'source' fnameescape(l:plugin)
    endfor
endfunction

" Load configuration files:
call SourceDir('~/.vim/config')
" Load plugins:
call SourceBundles()
" Load essential configuration files:
execute 'source ~/.vim/vimrc.vim'
execute 'source ~/.vim/keymaps.vim'
