call plug#begin()
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'preservim/nerdtree'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'
Plug 'lukas-reineke/indent-blankline.nvim', {'tag': 'v2.20.8'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'mhinz/vim-signify'
Plug 'wellle/context.vim'
call plug#end()

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gvd :vsplit<CR><Plug>(coc-definition)
nmap <silent> gxd :split<CR><Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
inoremap <silent><expr> <TAB>
    \ coc#pum#visible() ? coc#pum#next(1) :
    \ checkBackspace() ? "\<Tab>" :
    \ coc#refresh()
inoremap <expr><S_TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nnoremap <C-t> : NERDTreeToggle<CR>
nnoremap <leader>ff <cmd>Telescope find_files<cr>

set splitbelow
set splitright

set list
set listchars=tab:»·,trail:•

let g:indent_blankline_char_list = ['│','|','¦','┆','┊']
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

set relativenumber
set clipboard=unnamedplus

nnoremap p p=\]`
nnoremap P P=\]`

