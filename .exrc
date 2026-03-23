" compile quickly
"set makeprg=make\ -C\ ~/test
nnoremap <F5> :!make all<CR>

" run program
nnoremap <F4> :!./build/a.out<CR>

" ignore useless files
set wildignore+=*.o,*.d,*.swp,**/.git/**

" autocreate ctags
autocmd BufWritePost *.c,*.h,*.cpp
   \ let source_path = "./" |
   \ let tags_path = source_path . "tags" |
   \ silent! exe "!ctags -R -f" tags_path source_path "&" |

