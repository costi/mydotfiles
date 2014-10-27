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
let mapleader = ","
nmap <silent> <Leader>n :NERDTreeToggle<CR>
nmap <silent> <Leader>N :NERDTreeFind<CR>
map <leader>F :Ack<space>
map <Leader>t :FuzzyFinderTextMate<CR>
map <special> <F5> :ruby finder.rescan!<ENTER>
" Disable indenting for safe copy paste 
nnoremap <F8> :setl noai nocin nosi inde=<CR>
" easier tab navigation
map gr :tabprev<CR>
map tn :tabnew<CR>
" p4 edit
map <leader>e :!p4 edit %<CR>:e %<CR>
map <leader>d :!p4 diff %<CR>
" save
" this doesn't work: map <leader>s :w<CR>
" this either: imap <c-s> <c-o><c-s><CR>

command! Cnuapp let g:fuzzy_roots=['cnuapp/db/patches', 'cnuapp/db/views', 'cnuapp/db/functions', 'cnuapp/etc', 'cnuapp/ruby', 'cnuapp_models', 'cnuapp/test/functional/ruby/shared/core', 'cnuapp/test/ruby/web', 'cnu_ruby_core/lib/ruby', 'cnuapp_qa/lib/ruby/test', 'suite/lib', 'suite/spec/unit', 'suite/spec/API', 'suite/spec/functional/GB']
command! Nocnuapp let g:fuzzy_roots=['.']
let g:fuzzy_ceiling=16000
let g:fuzzy_ignore="*.csv;*.log;*.jpg;*.png;*.gif;*.ref;*.conf;.gitignore"
Cnuapp

" Search
set incsearch
set ignorecase
set smartcase
set hlsearch

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

