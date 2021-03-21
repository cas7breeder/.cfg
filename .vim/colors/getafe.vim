" Maintainer:   Lars Smit
" Version:      1.1
" Last Change:  19 januari 2013
" Credits:      Vim color scheme "getafe"
"
" Color Scheme Overview:
"	:ru syntax/hitest.vim
"
" Relevant Help:
"	:h highlight-groups
"
"	Colors
"         HEX       R   G   B
" blue    #01B0F0   1   176 240
" purple  #B994FF   185 150 255
" pink    #FF358B   255 53  139
" black   #000000   0   0   0
" brown   #1B1D1E   27  29  30
" green   #AEEE00   174 238 0
" grey    #5A7085   90  112 133
" orange  #FF6E0E   255 100 0
" yellow  #FFDC00   255 220 0
" white   #F8FFF9   248 255 249
" cyan    #69C3FF   198 197 254
" red     #FF0000   255 0   0

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "getafe"

"————————————————+———————————————————————————————————————————————+———+———————————————————————————————————————————————"
"                | GUI                                           |   | TERMINAL                                      "
"      TYPE      +———————————————+———————————————+———————————————+———+———————————————+———————————————+———————————————"
"                | foreground    | background    |               |   | foreground    | background    |               "
"————————————————+———————————————+———————————————+———————————————+———+———————————————+———————————————+———————————————"

"————————————————————————————————————————————————————————————————————————————————————————————————————————————————————"
" Full colors reset
"————————————————————————————————————————————————————————————————————————————————————————————————————————————————————"

" Base colors

hi ColorColumn                     guibg=NONE   gui=none                            ctermbg=NONE
hi Conceal         guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Cursor          guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi CursorIM        guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi CursorLine                      guibg=NONE   gui=none                            ctermbg=NONE
hi Directory       guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi DiffAdd         guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi DiffChange      guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi DiffDelete      guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi DiffText        guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi ErrorMsg        guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi VertSplit       guifg=NONE      guibg=NONE   gui=none            ctermfg=NONE    ctermbg=NONE    cterm=NONE
hi CursorColumn    guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Folded          guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi FoldColumn      guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi SignColumn      guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi IncSearch       guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE

hi LineNr          guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE

hi MatchParen      guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi ModeMsg         guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi MoreMsg         guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi NonText         guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Normal          guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Pmenu           guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi PmenuSel        guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi PmenuSbar       guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi PmenuThumb      guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Question        guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Search          guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi SpecialKey      guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi SpellCap        guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi SpellLocal      guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi SpellRare       guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi StatusLine      guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi StatusLineNC    guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi TabLine         guifg=#5A7085   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi TabLineFill     guifg=#5A7085   guibg=#323638   gui=none         ctermfg=15      ctermbg=NONE
hi TabLineSel      guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Title           guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi VisualNOS       guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi WarningMsg      guifg=#FF0000   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi WildMenu        guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE

"————————————————————————————————————————————————————————————————————————————————————————————————————————————————————"
" Syntax related colors
"————————————————————————————————————————————————————————————————————————————————————————————————————————————————————"

hi Comment         guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Constant        guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi String          guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Character       guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Number          guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Boolean         guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Float           guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Identifier      guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Function        guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Statement       guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Conditional     guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Repeat          guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Label           guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Operator        guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Keyword         guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Exception       guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi PreProc         guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Include         guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Define          guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Macro           guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi PreCondit       guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Type            guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi StorageClass    guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Structure       guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Typedef         guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Special         guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi SpecialChar     guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Tag             guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Delimiter       guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi SpecialComment  guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Debug           guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Underlined      guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Ignore          guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Error           guifg=#FF0000   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE
hi Todo            guifg=#F8FFF9   guibg=NONE   gui=none            ctermfg=15      ctermbg=NONE

"————————————————————————————————————————————————————————————————————————————————————————————————————————————————————"
" Interface                                                                                                          "
"————————————————————————————————————————————————————————————————————————————————————————————————————————————————————"

hi ColorColumn                     guibg=#5A7085                                       ctermbg=15
hi Cursor          guifg=#1B1D1E   guibg=#FF358B                       ctermfg=234     ctermbg=202
hi CursorLine                      guibg=#000000                                       ctermbg=15
hi Directory       guifg=#01B0F0                                       ctermfg=39
hi VertSplit       guifg=NONE      guibg=NONE                          ctermfg=NONE    ctermbg=NONE   cterm=NONE
hi Folded          guifg=#5A7085   guibg=#FFDC00                       ctermfg=60      ctermbg=220
hi IncSearch       guifg=#1B1D1E   guibg=#a7a7a7                       ctermfg=234     ctermbg=248

hi LineNr          guifg=#7997B3   guibg=#161111                       ctermfg=60      ctermbg=0

hi NonText         guifg=#eeeeee   guibg=NONE                          ctermfg=7       ctermbg=NONE
hi Search          guifg=#F8FFF9   guibg=#FF358B                       ctermfg=15      ctermbg=204
hi StatusLine      guifg=#222222   guibg=#01B0F0    gui=bold           ctermfg=15      ctermbg=39
hi StatusLineNC    guifg=#222222   guibg=#BBBBBB                       ctermfg=15      ctermbg=60
hi Todo            guifg=#000000   guibg=#FFDC00    gui=bold           ctermfg=0       ctermbg=220
hi Visual          guifg=#F8FFF9   guibg=#FF358B                                       ctermbg=60
hi ModeMsg         guifg=#000000   guibg=#FFDC00                       ctermfg=0       ctermbg=220
hi SpecialKey      guifg=#5A7085                                       ctermfg=60
hi ErrorMsg        guifg=#000000   guibg=#FF500E                       ctermfg=0       ctermbg=202
hi Title           guifg=#F8FFF9                                       ctermfg=15
hi DiffAdd	       guifg=#000000   guibg=#AEEE00                       ctermfg=0       ctermbg=154
hi DiffChange      guifg=#000000   guibg=#FFDC00                       ctermfg=0       ctermbg=220
hi DiffDelete      guifg=#000000   guibg=#9187FF                       ctermfg=0       ctermbg=204
hi DiffText        guifg=#F8FFF9                                       ctermfg=15
hi MatchParen      guifg=#F8FFF9   guibg=#FF500E                       ctermfg=15      ctermbg=202
hi Identifier      guifg=#01B0F0                                       ctermfg=202
hi Type            guifg=#AEEE00                                       ctermfg=154
hi Label           guifg=#AEEE00                                       ctermfg=154
hi Special         guifg=#01B0F0                                       ctermfg=39
hi WildMenu        guifg=#01B0F0   guibg=#000000                       ctermfg=39      ctermbg=0
hi Pmenu           guifg=#01B0F0   guibg=#000000                       ctermfg=39      ctermbg=0
hi PmenuSel                        guibg=#5A7085                                       ctermbg=60
hi PmenuSbar                       guibg=#5A7085                                       ctermbg=60
hi PmenuThumb      guifg=#01B0F0                                       ctermfg=39

"————————————————————————————————————————————————————————————————————————————————————————————————————————————————————"
" Syntax related colors
"————————————————————————————————————————————————————————————————————————————————————————————————————————————————————"

hi Comment         guifg=#5A7085                                       ctermfg=60
hi Constant        guifg=#B994FF                                       ctermfg=204
hi String          guifg=#AEEE00                                       ctermfg=204
hi Number          guifg=#FF6E0E                                       ctermfg=202
hi Boolean         guifg=#FF6E0E                                       ctermfg=154
hi Float           guifg=#FF6E0E                                       ctermfg=138
hi Function        guifg=#01B0F0                                       ctermfg=39
hi Statement       guifg=#01B0F0                                       ctermfg=39
hi Conditional     guifg=#69C3FF                                       ctermfg=154
hi Operator        guifg=#69C3FF                                       ctermfg=202
hi Keyword         guifg=#69C3FF                                       ctermfg=154
hi Define          guifg=#69C3FF                                       ctermfg=154
hi Delimiter       guifg=#69C3FF                                       ctermfg=154
hi Exception       guifg=#FF0000
hi Include         guifg=#FF0000


" PHP specific colors
hi phpStructure    guifg=#69C3FF                                       ctermfg=154
hi phpRegion       guifg=#AEEE00                                       ctermfg=204
hi phpStorageClass guifg=#69C3FF
hi phpRepeat       guifg=#FF6E0E
hi phpIdentifier   guifg=#F8FFF9
hi phpMethodsVar   guifg=#69C3FF
