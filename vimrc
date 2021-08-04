" 	CONFIG INICIALES
syntax on
set t_Co=256
set rnu 
set number
let mapleader = ","
set clipboard=unnamedplus
"set cursorline 


"	ATAJOS TECLADOS
inoremap ww <Esc>:w<cr> 
nnoremap <Leader>x *``cgn
nnoremap <Leader>X #``cgN
imap ii <Esc>
noremap cp yap<S-}>p
noremap <leader>q :q!<cr>

noremap ;; :%s:::g<Left><Left><Left>
noremap ;' :%s:::gc<Left><Left><Left><Left>
noremap sv :vs<cr>
noremap ss :sp<cr>


noremap sl <C-w>l
noremap sj <C-w>h
noremap si <C-w>k
noremap sk <C-w>j
" 	PLUGINS
call plug#begin('~/.vim/plugged')


Plug 'morhetz/gruvbox'
Plug 'chriskempson/base16-vim'
Plug 'dracula/vim'
Plug 'tomasiser/vim-code-dark'
Plug 'sjl/badwolf'
Plug 'preservim/nerdtree'
	nnoremap <leader>t :NERDTreeToggle<CR>
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sirver/ultisnips'
	let g:UltiSnipsExpandTrigger = '<tab>'
	let g:UltiSnipsJumpForwardTrigger = '<tab>'
	let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

Plug 'lervag/vimtex'
	let g:tex_flavor='latex'
	let g:vimtex_view_method='zathura'
	let g:vimtex_quickfix_mode=0

Plug 'KeitaNakamura/tex-conceal.vim'
	set conceallevel=1
	let g:tex_conceal='abdmg'
	hi Conceal ctermbg=none
	setlocal spell
	set spelllang=en_us
	inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
"	AIRLINE
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
	set encoding=UTF-8
Plug 'dylanaraps/wal.vim'


call plug#end()

" 	GRUVBOX CONFIG	
set notermguicolors
set background=dark
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
hi Normal ctermbg=NONE
hi LineNR ctermbg=NONE ctermfg=2
hi Comment ctermbg=NONE guibg=NONE term=NONE ctermfg=65 guifg=#6A9955 
let g:airline_theme='wal'
