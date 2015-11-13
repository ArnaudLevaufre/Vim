" == CUSTOM COLOR SCHEME == "

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=dark	" or light
hi clear
if exists("syntax_on")
    syntax reset
endif

" A good way to see what your colorscheme does is to follow this procedure:
" :w
" :so %
"
" == HIGHLIGHT GROUPS

hi ColorColumn ctermbg=235
"hi Cursor
"hi CursorIM
hi CursorLine	cterm=none				    ctermbg=236
hi CursorLineNr	cterm=none		ctermfg=255	ctermbg=234
"hi DiffAdd
"hi DiffChange
"hi DiffDelete
"hi DiffText
"hi Directory
"hi ErrorMsg
"hi FoldColumn
hi Folded		cterm=none	    ctermfg=244 ctermbg=235
"hi IncSearch
hi LineNr		cterm=none	    ctermfg=241	ctermbg=235
hi MatchParen	cterm=bold		ctermfg=255 	    ctermbg=0
hi Menu			cterm=none		ctermfg=228
hi ModeMsg		cterm=none		ctermfg=111		ctermbg=0
"hi MoreMsg
"hi NonText
hi Normal		cterm=none		ctermfg=none
hi Pmenu		cterm=none		ctermfg=250	    ctermbg=0
hi PmenuSbar	cterm=none		ctermfg=255		ctermbg=0
hi PmenuSel		cterm=none		ctermfg=255		ctermbg=241
"hi Question
"hi Scrollbar
"hi Search
"hi SpecialKey
hi StatusLine	cterm=bold		ctermfg=255 	ctermbg=0
hi StatusLineNC	cterm=none		ctermfg=248	ctermbg=0
hi TabLine		cterm=none		ctermfg=248	ctermbg=0
hi TabLineFill	cterm=none		ctermfg=0	ctermbg=0
hi TabLineSel	cterm=none		ctermfg=255	ctermbg=237
"hi Title
"hi Tooltip
hi VertSplit	cterm=none		ctermfg=0	ctermbg=0
"hi Visual
"hi VisualNOS
"hi WarningMsg
hi WarningMsg	cterm=none		ctermfg=179
hi WildMenu		cterm=none		ctermfg=203

" ==  syntax highlighting groups

hi Comment		cterm=none 		ctermfg=194 ctermbg=none
hi Constant		cterm=none 		ctermfg=225	ctermbg=none
hi Define		cterm=none 		ctermfg=228
hi Delimiter	cterm=none		ctermfg=255	ctermbg=none
hi Error		cterm=bold		ctermfg=203	ctermbg=none
hi Function		cterm=none		ctermfg=110
hi Identifier	cterm=none 		ctermfg=114	ctermbg=none
hi Ignore		cterm=none		ctermfg=none ctermbg=none
hi Include		cterm=none      ctermfg=228
hi Macro		cterm=none		ctermfg=228
hi Number		cterm=none      ctermfg=216
hi PreCondit	cterm=none		ctermfg=228
hi PreProc		cterm=none		ctermfg=114	ctermbg=none
hi Special		cterm=none		ctermfg=213 ctermbg=none
hi Statement	cterm=bold      ctermfg=111	ctermbg=none
hi String		cterm=none		ctermfg=248
hi Todo			cterm=none      ctermfg=211 ctermbg=none
hi Type			cterm=none		ctermfg=114	ctermbg=none
hi Underlined	cterm=underline	ctermfg=255	ctermbg=none

" == HTML SPECIFIC

hi htmlArg		cterm=none		ctermfg=223
hi htmlComment 	cterm=bold		ctermfg=114
hi htmlCommentPart	cterm=bold	ctermfg=114
hi htmlEndTag	cterm=none		ctermfg=111
hi htmlPreAttr	cterm=none		ctermfg=203
hi htmlString	cterm=none		ctermfg=248
hi htmlTag		cterm=none		ctermfg=111
hi htmlTagName	cterm=none		ctermfg=111
hi htmlValue	cterm=none		ctermfg=248

" == PHP SPECIFIC

hi phpDefine	cterm=none		ctermfg=110
hi phpFloat		cterm=none		ctermfg=216
hi phpFunctions cterm=none		ctermfg=110
hi phpInclude	cterm=none		ctermfg=111
hi phpMemberSelector cterm=none	ctermfg=255
hi phpMethods	cterm=none		ctermfg=111
hi phpNumber	cterm=none		ctermfg=216
hi phpOperator 	cterm=none		ctermfg=255
hi phpParent 	cterm=none		ctermfg=255
hi phpRegionSync	cterm=none	ctermfg=203
hi phpRelation	cterm=none		ctermfg=255
hi phpSpecial		cterm=none	ctermfg=203
hi phpStringDouble	cterm=none	ctermfg=248
hi phpVarSelector	cterm=none	ctermfg=114
