call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'preservim/nerdtree'
Plug 'dense-analysis/ale'

call plug#end()
"et permet moure millor per vim"
vnoremap <S-Down>	:m '>+1<CR>gv=gv
vnoremap <S-Up> 	:m '<-2<CR>gv=gv
set noexpandtab shiftwidth=4 tabstop=4
set include=
set noswapfile
set autoread
set tabstop=4
set shiftwidth=4
set foldcolumn=1
set laststatus=2
set smartindent
set autoindent
nnoremap L <end>
nnoremap H <home>
set listchars+=tab:\\>
nnoremap <space> :NERDTreeToggle<CR>
nnoremap ] :call TheNext()<CR>
nnoremap [ :call ThePrev()<CR>
function! TheNext()
	if exists ( '*tabpagenr' ) && tabpagenr('$') != 1
		normal gt
	else
		execute ":bnext"
	endif
endfunction

function! ThePrev()
	if exists ( '*tabpagenr' ) && tabpagenr('$') != 1
		normal gT
	else
		execute ":bprev"
	endif
endfunction
if (has("termguicolors"))
  set termguicolors
 endif
syntax on
set splitright
set backspace=indent,eol,start
set nu
set mouse=a
set ruler
" Do not save backup files.
set nobackup
" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10
" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap
" While searching though a file incrementally highlight matching characters as you type.
set incsearch
" Ignore capital letters during search.
set ignorecase
" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase
" Show partial command you type in the last line of the screen.
set showcmd
" Show the mode you are on the last line.
set showmode
" Show matching words during a search.
set showmatch
" Use highlighting when doing a search.
set hlsearch
" Enable auto completion menu after pressing TAB.
set wildmenu
" Make wildmenu behave like similar to Bash completion.
set wildmode=full
set wildoptions=pum
" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
