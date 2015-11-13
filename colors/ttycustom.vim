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
let g:colors_name="arnaud"

" A good way to see what your colorscheme does is to follow this procedure:
" :w 
" :so % 
"
" == HIGHLIGHT GROUPS 	

"hi Cursor
"hi CursorIM
hi CursorLine	cterm=none
hi CursorLineNr	cterm=none		ctermfg=white	ctermbg=darkgrey
"hi DiffAdd		
"hi DiffChange	
"hi DiffDelete	
"hi DiffText	
"hi Directory	
"hi ErrorMsg	
"hi FoldColumn
hi Folded		cterm=inverse	ctermfg=darkgrey	ctermbg=brown
"hi IncSearch	
hi LineNr		cterm=inverse	ctermfg=white	ctermbg=grey
hi MatchParen	cterm=bold		ctermfg=white 	ctermbg=black
hi Menu			cterm=none		ctermfg=yellow
hi ModeMsg		cterm=none		ctermfg=blue		ctermbg=black
"hi MoreMsg		
"hi NonText		
hi Normal		cterm=none		ctermfg=none
hi Pmenu		cterm=none		ctermfg=lightgrey	ctermbg=black
hi PmenuSbar	cterm=none		ctermfg=white		ctermbg=black
hi PmenuSel		cterm=none		ctermfg=white		ctermbg=darkgrey
"hi Question	
"hi Scrollbar
"hi Search		
"hi SpecialKey	
hi StatusLine	cterm=bold		ctermfg=white 	ctermbg=black
hi StatusLineNC	cterm=none		ctermfg=grey	ctermbg=black
hi TabLine		cterm=none		ctermfg=grey	ctermbg=black
hi TabLineFill	cterm=none		ctermfg=black	ctermbg=black
hi TabLineSel	cterm=none		ctermfg=white	ctermbg=darkgrey
"hi Title
"hi Tooltip		
hi VertSplit	cterm=none		ctermfg=black	ctermbg=black
"hi Visual		
"hi VisualNOS	
"hi WarningMsg	
hi WarningMsg	cterm=none		ctermfg=brown 
hi WildMenu		cterm=none		ctermfg=red

" ==  syntax highlighting groups

hi Comment		cterm=bold 		ctermfg=yellow 	ctermbg=none
hi Constant		cterm=bold 		ctermfg=brown	ctermbg=none
hi Define		cterm=none		ctermfg=yellow
hi Delimiter	cterm=none		ctermfg=white	ctermbg=none
hi Error		cterm=bold		ctermfg=red		ctermbg=none
hi Function		cterm=none		ctermfg=darkblue
hi Identifier	cterm=none 		ctermfg=green	ctermbg=none
hi Ignore		cterm=none		ctermfg=none	ctermbg=none
hi Include		cterm=none		ctermfg=yellow
hi Macro		cterm=none		ctermfg=yellow
hi Number		cterm=bold		ctermfg=brown
hi PreCondit	cterm=none		ctermfg=yellow
hi PreProc		cterm=none		ctermfg=green	ctermbg=none
hi Special		cterm=none		ctermfg=magenta ctermbg=none
hi Statement	cterm=none		ctermfg=blue	ctermbg=none
hi String		cterm=none		ctermfg=grey
hi Todo			cterm=none		ctermfg=brown	ctermbg=none
hi Type			cterm=none		ctermfg=green	ctermbg=none
hi Underlined	cterm=underline	ctermfg=white	ctermbg=none

" == HTML SPECIFIC 

hi htmlArg		cterm=none		ctermfg=brown
hi htmlComment 	cterm=bold		ctermfg=green
hi htmlCommentPart	cterm=bold	ctermfg=green
hi htmlEndTag	cterm=none		ctermfg=blue
hi htmlPreAttr	cterm=none		ctermfg=brown
hi htmlString	cterm=none		ctermfg=brown
hi htmlTag		cterm=none		ctermfg=blue
hi htmlTagName	cterm=none		ctermfg=blue
hi htmlValue	cterm=none		ctermfg=brown

" == PHP SPECIFIC

hi phpDefine	cterm=none		ctermfg=darkblue
hi phpFloat		cterm=none		ctermfg=brown
hi phpFunctions cterm=none		ctermfg=darkblue
hi phpInclude	cterm=none		ctermfg=blue
hi phpMemberSelector cterm=none	ctermfg=white
hi phpMethods	cterm=none		ctermfg=blue
hi phpNumber	cterm=none		ctermfg=brown
hi phpOperator 	cterm=none		ctermfg=white
hi phpParent 	cterm=none		ctermfg=white
hi phpRegionSync	cterm=none	ctermfg=red
hi phpRelation	cterm=none		ctermfg=white
hi phpSpecial		cterm=none	ctermfg=red
hi phpStringDouble	cterm=none	ctermfg=grey
hi phpVarSelector	cterm=none	ctermfg=green
