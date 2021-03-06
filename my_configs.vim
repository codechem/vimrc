
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
au FileType python setlocal omnifunc=pythoncomplete#Complete
au FileType javascript call JavaScriptFold()

"make the autocomplete better accessible
inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>

" tabs setup
set tabstop=4
set shiftwidth=4
set softtabstop=4
set nofullscreen

nnoremap <F8> :TagbarToggle<CR>
let g:tagbar_sort = 0 "tagbar shows tags in order of they created in file
let g:tagbar_foldlevel = 0 "close tagbar folds by default
let g:tagbar_autofocus = 1

" haskell setup 
au BufRead,BufNewFile *.hs setlocal filetype=haskell
au FileType haskell setlocal omnifunc=necoghc#omnifunc

" typescript setup
au BufRead,BufNewFile *.ts        setlocal filetype=typescript
set rtp+=/usr/local/lib/node_modules/typescript-tools

" jekyll setup 
let g:jekyll_post_extension = '.md'
let g:jekyll_post_template =  [
    \ '---',
    \ 'layout: post',
    \ 'title: "JEKYLL_TITLE"',
    \ 'date: "JEKYLL_DATE"',
    \ '---',
    \ '']


"clear search highlights
nnoremap <F3> :set hlsearch!<CR>

"toggle line numbers
nnoremap <F4> :set nu!<CR>
"Git shortcuts
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>gr :Git checkout %
nnoremap <Leader>gh :Giff ~
nnoremap <Leader>gp :Gpush origin 
nnoremap <Leader>gl :Gpull origin 
nnoremap <Leader>wq :wq<CR>
nnoremap ; :

"buffers movement
nmap <leader>sh :leftabove  vnew<CR>
nmap <leader>sl :rightbelow vnew<CR>
nmap <leader>sk :leftabove  new<CR>
nmap <leader>sj :rightbelow new<CR>

"add new lines above and bellow without exiting normal mode
nnoremap <S-Enter> O<Esc>
nnoremap <C-Enter> o<Esc>

au FileType markdown nnoremap <Leader>p :Preview<CR>
let g:used_javascript_libs = 'backbone,jquery,underscore,backbone,angularjs,requirejs,jasmine'

"Go stuff
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)

au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

au FileType go nmap gd <Plug>(go-def)

au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

let g:go_play_open_browser = 0
let g:go_fmt_command = "goimports"

"Unfold everything
"au BufRead * normal zR
"By default vim-go shows errors for the fmt command, to disable it:
let g:go_fmt_fail_silently = 1

"Change the build path
"let g:go_bin_path = expand("~/.gotools")
"let g:go_bin_path = "/home/fatih/.mypath"      "or give absolute path

"Disable auto save
"let g:go_fmt_autosave = 0

"Python related setup
"start autocompletion on startup
"let g:neocomplcache_enable_at_startup = 1
"iab ipdb import ipdb; ipdb.set_trace()
iab utf! # -*- coding: utf-8 -*-
"set completeopt-=preview
"let g:pymode_rope_completion = 1
"let g:pymode_options = 0
"let g:pymode_lint_write = 0
"let g:pymode_folding = 0
let g:pymode_lint_ignore="E111,E302,E501,W601"
let g:pymode_rope_goto_definition_cmd = 'vnew'

" colorscheme peaksea
colorscheme ir_black
