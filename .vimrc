if &t_Co > 1
    syntax enable
    au BufNewFile,BufRead *.rs set filetype=rust
endif

"set t_Co=256
colorscheme connor

"set autoindent
"set cindent
filetype plugin indent on
set shiftwidth=4

" wrap the text (display long line as several lines)
set wrap
" but do not insert linebreaks automatically
"set textwidth=0
set formatoptions=l
set lbr
" and break the lines displayed on special characters only
set linebreak

set ruler
set ruf=%70(\[%o\]\ \[%l,%c\]\:\ 0x%02B\(%4b\)\ \ \ %t\ %4p%%%)
set hlsearch
set ignorecase
set showmode
set showcmd
set wm=1
set expandtab


"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength  /\%81v.\+/

" spaces before the end of line
" leading spaces
"highlight LeadingSpaces ctermbg=Brown guibg=Brown

" extra spaces
"autocmd Syntax * syn match LeadingSpaces /^\s\+/

" just mark end-of-line
"highlight EndOfLine ctermfg=Brown
"match EndOfLine  /$/
"set lcs=eol:.
"set list

" mappings
map <Up> gk
map <Down> gj


" for utf-8 there is no need to set LANG
set encoding=utf-8
set fileencodings=ucs-bom,utf-8

set colorcolumn=81
"vnoremap <C-c> "+y
"
" Mini Buffer Explorer options
let g:miniBufExplVSplit = 24
map <Leader>t :MBEToggle<cr>
map <Leader>f :MBEFocus<cr>

" move that to colorscheme
"hi LineNr ctermfg=LightGrey ctermbg=Blue

