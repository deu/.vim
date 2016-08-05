.vim
====

My .vimrc-less VIM configuration.

Clone
-----
```
$ git clone --recursive https://github.com/deuiore/.vim.git
```

Update
------
```
~/.vim $ git pull --recurse-submodules
~/.vim $ git submodule update --recursive
```
To actually upgrade all submodule to their latest commits:
```
~/.vim $ git submodule foreach "(git checkout master; git pull)"
```

Add Submodule
-------------
```
~/.vim $ git submodule add <URL> bundle/<NAME>
```

Remove Submodule
----------------
```
~/.vim $ git submodule deinit -f bundle/<NAME>
~/.vim $ git rm --cached bundle/<NAME>
~/.vim $ git config -f .gitmodules --remove-section submodule.bundle/<NAME>
~/.vim $ rm -rf bundle/<NAME> .git/modules/bundle/<NAME>
```
