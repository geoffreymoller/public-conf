syntax enable
syntax on

set nobackup
set nowritebackup
set incsearch

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

set ignorecase
set number
set ruler
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set expandtab

map <F1> :previous<CR>
map <F2> :next<CR>
map <F3> o  border: 1px solid red;
map <F4> o  border: 1px solid green;
map <F5> o/*
map <F6> o*/
map <F7> i//
map <C-l> :%s/^M$//g<CR>

map <C-p> :tabp<CR>
map <C-n> :tabn<CR>
map <C-t> :Ack

let paste_mode = 1 " 0 = normal, 1 = paste

if has("spell")
 set nospell

 " toggle spelling with F4 key
 map <F4> :set spell!<CR><Bar>:echo "Spell Check: " . strpart("OffOn", 3 * &spell, 3)<CR>

 " they were using white on white
 highlight PmenuSel ctermfg=black ctermbg=lightgray

 " limit it to just the top 10 items
 set sps=best,10
endif

