syntax on
set background=dark
setlocal spell spelllang=en_us
set spell spelllang=en_us
syntax spell toplevel
set expandtab
let filetype_w = "cweb"
syn sync maxlines=2000
syn sync minlines=500
" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo
set colorcolumn=80
augroup vimrcEx
  autocmd!
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
augroup END

match ErrorMsg '\s\+$'

command Gitcommit execute "!git add .;git commit"
command Gitpush execute "!git push"
command Doit execute "!make;make installavr"
map <F12> :Doit<CR>
