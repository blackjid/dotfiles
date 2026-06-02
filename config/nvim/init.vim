" Reuse the shared vim configuration so `nvim` (our $EDITOR) behaves like vim.
" vim-plug, ALE, airline, etc. all live in ~/.vimrc / ~/.vimrc.bundles.
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
