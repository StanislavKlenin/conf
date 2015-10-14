" connor colorscheme, v2, simplifed edition (cterm only)
" Maintainer:	connor

hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "connor"
set background=dark

autocmd Syntax * syn match Tabs /\t/ containedin=ALL
autocmd Syntax * syn match ExtraSpace /\s\+\%#\@<!$/ containedin=ALL

"  group        modifiers      fg                bg
hi Tabs                                          ctermbg=Brown
hi ExtraSpace                                    ctermbg=DarkGrey

hi Identifier   cterm=bold     ctermfg=Cyan
hi Constant                    ctermfg=LightRed
hi Comment                     ctermfg=DarkGrey
hi String       cterm=bold     ctermfg=Magenta
hi Character                   ctermfg=Magenta
hi Number                      ctermfg=Red
hi Float                       ctermfg=Red
hi Boolean                     ctermfg=Red

hi Special      cterm=bold     ctermfg=DarkGreen
hi Statement    cterm=bold     ctermfg=White
hi PreProc                     ctermfg=DarkCyan
hi Type         cterm=bold     ctermfg=Blue
hi StorageClass cterm=bold     ctermfg=White
hi Function                    ctermfg=Magenta

hi Visual                      ctermfg=black     ctermbg=Yellow
hi Search                      ctermfg=Black     ctermbg=DarkBlue
hi Tag          cterm=bold     ctermfg=DarkGreen
hi Error                       ctermfg=White     ctermbg=Red
hi Todo                        ctermfg=Black     ctermbg=Yellow

hi CursorLine   cterm=none                       ctermbg=Black
hi ColorColumn                                   ctermbg=DarkGrey
hi LineNr                      ctermfg=Grey      ctermbg=DarkGrey
hi StatusLine                                    ctermbg=Black
hi StatusLineNC  cterm=reverse ctermfg=DarkGrey  ctermbg=Grey
hi WarningMsg                  ctermfg=Red

if &t_Co == 256
    hi ExtraSpace                                ctermbg=236
    hi LineNr                 ctermfg=241        ctermbg=237
endif
" below is a tab with several spaces
	    

