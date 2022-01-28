" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? \<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" fuzzy
nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

" c++ compiler
nnoremap <C-\> :!g++ -std=c++17 % -Wall -g -o %.out && ./%.out<CR>

" python compiler
nnoremap <C-p> :w !python3 %<CR>

" Go compiler
nnoremap <leader>tt :w !go run %<CR>

" cSpell
vmap <leader>qq <Plug>(coc-codeaction-selected)
nmap <leader>qq <Plug>(coc-codeaction-selected)

" prettier
nnoremap <F12> :Prettier<CR>

" telescope baby!!
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Add missing imports on save - GO
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')"
