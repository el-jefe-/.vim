"""" Pathogen setup """"""
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"""""""""" Jeffs Custom Highlighting """"
"color anotherdark
syn match codeFoldStart "/\*"
syn match codeFoldEnd "\*/"

syn match hlightLine "\*\*.*$"
hi hlightLine term=bold cterm=bold gui=bold ctermbg=blue guibg=green  
hi codeFoldStart term=bold cterm=bold gui=bold ctermbg=blue guibg=green
hi codeFoldEnd term=bold cterm=bold gui=bold ctermbg=blue guibg=green

setlocal foldmethod=marker
setlocal foldmarker=/*,*/
set guioptions=aAce
set clipboard=unnamed
" Give a shortcut key to NERD Tree
map nn :NERDTreeToggle<CR>

" attempting to get the syntax automatically selected based on extension
syntax on
filetype on
au BufNewFile,BufRead *.note set filetype=note


