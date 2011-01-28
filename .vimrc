filetype off
filetype plugin indent on

" Tabs
set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab

" Look and Feel
set t_Co=256
set background=dark
if &diff
  colorscheme peaksea
else
  colorscheme ir_black
endif

syntax on
set number 
set equalalways
set splitbelow splitright
set scrolloff=8
set backspace=indent,eol,start
set shortmess+=I

" Key Mappings
imap jj <Esc>
inoremap <tab> <c-n>
let mapleader = ","
nmap <silent> <Leader>n :NERDTreeToggle<CR>
nmap <silent> <Leader>N :NERDTreeFind<CR>
map <leader>F :Ack<space>
map <Leader>t :FuzzyFinderTextMate<CR>

let g:fuzzy_roots=["cnuapp/db", "cnuapp/etc", "cnuapp/gems", "cnuapp/ruby", "cnuapp_models"]
let g:fuzzy_ceiling=13000
let g:fuzzy_ignore="*.log;*.jpg;*.png;*.gif;*.ref;*.conf;.gitignore"

" Search
set incsearch
set ignorecase
set smartcase

" Status Line
set laststatus=2
set statusline+=[%F]
set statusline+=[FORMAT=%{&ff}]
set statusline+=[TYPE=%Y]
set statusline+=[POS=%04l,%04v]
set statusline+=[%p%%]
set statusline+=%*
set ruler

" folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" Swap and Backup Files
set nobackup
set nowritebackup
set noswapfile

" Jump to last cursor position when opening a file.
" Do not do it when writing a commit log entry.
autocmd BufReadPost * call SetCursorPosition()
function! SetCursorPosition()
  if &filetype !~ 'commit\c'
    if line("'\"") > 0 && line("'\"") <= line("$")
     exe "normal g`\""
    endif
  end
endfunction

augroup filetypedetect 
  au BufNewFile,BufRead *.wiki setf Wikipedia 
augroup END

" Highlight rows longer than 80 characters
map <silent> <F1> <Esc>:call ToggleOverLengthHi()<CR>
function ToggleOverLengthHi()
  if exists("b:overlengthhi") && b:overlengthhi
    highlight clear OverLength
    let b:overlengthhi = 0
    echo "overlength hilight off"
  else
    " adjust colors/styles as desired
    highlight OverLength ctermbg=darkred gui=undercurl guisp=blue
    " change '81' to be 1+(number of columns)
    match OverLength /\%81v.\+/
    let b:overlengthhi = 1
    echo "overlength hilight on"
  endif
endfunction"

" keep a longer history than 20
set history=1000

" Set the terminal title with the filename
set title

" give more context when we're scrolling
set scrolloff=3

" Catch trailing whitespace
" Make them show with ,s
set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>


