" Maintainer:	connor

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "connor"


"hi Comment term=bold ctermfg=Red guifg=Red
"hi Comment ctermfg=DarkGrey ctermbg=Black guifg=DarkGrey 
hi Comment cterm=bold ctermfg=DarkGrey guifg=DarkGrey
hi Normal guifg=black guibg=white
"hi Constant term=underline ctermfg=Magenta guifg=Magenta
hi String term=underline ctermfg=Magenta guifg=Magenta
hi Character term=underline ctermfg=Magenta guifg=Magenta
hi Number term=underline ctermfg=LightRed guifg=Magenta
hi Float term=underline ctermfg=LightRed guifg=Magenta
hi Boolean term=underline ctermfg=LightRed guifg=Magenta
hi Special term=bold cterm=bold ctermfg=Magenta guifg=Magenta
"hi Identifier term=underline ctermfg=Blue guifg=Blue
hi Statement term=bold cterm=bold ctermfg=White gui=NONE guifg=Brown
hi PreProc term=underline ctermfg=Magenta guifg=Purple
hi Type term=underline cterm=bold ctermfg=Blue gui=NONE guifg=Blue
hi StorageClass term=bold cterm=bold ctermfg=White gui=NONE guifg=Brown
hi Visual term=reverse ctermfg=Yellow ctermbg=Red gui=NONE guifg=Black guibg=Yellow
hi Search term=reverse ctermfg=Black ctermbg=Cyan gui=NONE guifg=Black guibg=Cyan
hi Tag term=bold cterm=bold ctermfg=DarkGreen guifg=DarkGreen
hi Error term=reverse ctermfg=15 ctermbg=9 guibg=Red guifg=White
hi Todo term=standout ctermbg=Yellow ctermfg=Black guifg=Blue guibg=Yellow
hi StatusLine term=bold,reverse cterm=NONE ctermfg=Yellow ctermbg=DarkGray gui=NONE guifg=Yellow guibg=DarkGray
"hi PreProc ctermbg=Black ctermfg=Cyan
hi PreProc ctermfg=Cyan
"hi Function ctermbg=Black ctermfg=Magenta
hi Function ctermfg=Magenta
hi Search ctermbg=DarkBlue

hi ColorColumn ctermbg=Grey
hi LineNr ctermfg=Blue

hi Tabs ctermbg=Brown guibg=Brown
autocmd Syntax * syn match Tabs /\t/ containedin=ALL

hi ExtraSpace ctermbg=DarkGrey guibg=DarkGrey
hi ExtraSpaceAfterText ctermbg=DarkCyan guibg=DarkCyan
if &t_Co == 256
    hi ExtraSpace ctermbg=236
    hi LineNr ctermfg=241 ctermbg=237
    hi Number term=underline ctermfg=Red guifg=Magenta
endif

"autocmd Syntax * syn match ExtraSpaceAfterText /\(\S\+\)\@<=\s\+$/ containedin=ALL
autocmd Syntax * syn match ExtraSpace /\s\+\%#\@<!$/ containedin=ALL

"hi! link MoreMsg Comment
"hi! link ErrorMsg Visual
"hi! link WarningMsg ErrorMsg
"hi! link Question Comment
"hi link String	Constant
"hi link Character	Constant
"hi link Number	Constant
"hi link Boolean	Constant
"hi link Float		Number
"hi link Function	Identifier
"hi link Conditional	Statement
"hi link Repeat	Statement
"hi link Label		Statement
"hi link Operator	Statement
"hi link Keyword	Statement
"hi link Exception	Statement
"hi link Include	PreProc
"hi link Define	PreProc
"hi link Macro		PreProc
"hi link PreCondit	PreProc
"hi link StorageClass	Type
"hi link Structure	Type
"hi link Typedef	Type
"hi link SpecialChar	Special
"hi link Delimiter	Special
"hi link SpecialComment Special
"hi link Debug		Special
