" Vim color file
" Maintainer:	Bert Muennich <ber.t at gmx.com>
" Last Change:	2011 Jul 19

" This color scheme uses a dark background.

set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif	
let g:colors_name = "bored"

hi Comment      ctermfg=darkblue                        cterm=none
hi Constant     ctermfg=darkred                         cterm=none
hi Identifier   ctermfg=darkcyan                        cterm=none
hi Statement    ctermfg=darkyellow                      cterm=none
hi PreProc      ctermfg=darkmagenta                     cterm=none
hi Type         ctermfg=darkgreen                       cterm=none
hi Special      ctermfg=darkblue                        cterm=none
hi MatchParen   ctermfg=black       ctermbg=darkcyan    cterm=none
hi Error        ctermfg=white       ctermbg=darkred     cterm=none
hi Todo         ctermfg=white       ctermbg=darkmagenta cterm=none
hi Directory    ctermfg=darkblue
hi LineNr       ctermfg=darkgrey                        cterm=none
hi StatusLine   ctermfg=black       ctermbg=darkgreen   cterm=none
hi Search       ctermfg=black       ctermbg=darkyellow
hi Visual                           ctermbg=none        cterm=reverse
hi ColorColumn                      ctermbg=lightgrey   cterm=none
hi Pmenu        ctermfg=white       ctermbg=darkgrey    cterm=none
hi PmenuSel     ctermfg=black       ctermbg=darkgreen
hi PmenuSbar                        ctermbg=lightgrey
hi PmenuThumb   ctermfg=white
hi ModeMsg      ctermfg=blue                            cterm=bold
hi ErrorMsg     ctermfg=white       ctermbg=darkred     cterm=none
hi WarningMsg   ctermfg=darkred                         cterm=none
hi Question     ctermfg=darkgreen
hi TabLine                                              cterm=underline
hi TabLineFill                                          cterm=reverse
hi TabLineSel                                           cterm=bold
hi FoldColumn   ctermfg=darkyellow  ctermbg=darkgrey    cterm=none
hi Folded       ctermfg=darkyellow  ctermbg=darkgrey    cterm=none
hi DiffAdd      ctermfg=black       ctermbg=darkcyan    cterm=none
hi DiffChange   ctermfg=black       ctermbg=darkyellow  cterm=none
hi DiffDelete   ctermfg=black       ctermbg=darkred     cterm=none
hi DiffText     ctermfg=white       ctermbg=darkmagenta cterm=none
