" moonqueen v0.2.4 by sailorfe
" built 2026-08-08
" https://codeberg.org/sailorfe/moonqueen.nvim

" moonqueen.vim -- automatically generated, do not edit by hand.
" Classic Vimscript (no vim9script)

set background=dark
hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'moonqueen'

if exists('+termguicolors')
  set termguicolors
endif

" == ui ===========================

hi Normal       guifg=#E1D9F2 guibg=#1B1429 ctermfg=189 ctermbg=234
hi NonText      guifg=#53476B ctermfg=240
hi EndOfBuffer  guifg=#53476B ctermfg=240
hi SpecialKey   guifg=#DB70B8 ctermfg=169
hi ColorColumn  guibg=#291E3E ctermbg=236
hi Cursor       guifg=#1B1429 guibg=#F1EBFF ctermfg=234 ctermbg=255
hi CursorLine   guibg=#362853 ctermbg=237 cterm=NONE gui=NONE
hi CursorColumn guibg=#362853 ctermbg=237
hi CursorLineNr guifg=#F1EBFF guibg=#362853 ctermfg=255 ctermbg=237
hi LineNr       guifg=#53476B ctermfg=240
hi MatchParen   guifg=#F1EBFF guibg=#362853 gui=bold ctermfg=255 ctermbg=237 cterm=bold
hi SignColumn   guifg=#9180B3 ctermbg=103 guibg=#362853 ctermbg=237
hi FoldColumn   guifg=#453762 guibg=#171122 ctermfg=239 ctermbg=234
hi Folded       guifg=#9180B3 ctermfg=103 guibg=#362853 ctermbg=237
hi Conceal      guifg=#53476B ctermbg=240 guibg=#291E3E ctermbg=236
hi Visual       guibg=#DB70B8 guifg=#1B1429 ctermbg=169 ctermfg=234
hi Search       guifg=#1B1429 guibg=#EBB447 ctermfg=234 ctermbg=179
hi IncSearch    guifg=#1B1429 guibg=#5CADD6 ctermfg=234 ctermbg=74
hi QuickFixLine guibg=#362853 ctermbg=237
hi WildMenu     guifg=#1B1429 guibg=#E1D9F2 ctermfg=234 ctermbg=189
hi StatusLine       term=bold cterm=bold guifg=#F1EBFF guibg=#291E3E ctermfg=255 ctermbg=236
hi StatusLineNC     term=bold cterm=bold guifg=#53476B guibg=#1B1429 ctermfg=240 ctermbg=234
hi StatusLineTerm   term=bold cterm=bold ctermfg=234 guibg=#85D65C ctermbg=113
hi StatusLineTermNC term=bold cterm=bold ctermfg=234 guibg=#C0F0A8 ctermbg=157
hi VertSplit        guifg=#291E3E guibg=#1B1429 ctermfg=236 ctermbg=234
hi TabLine          guifg=#53476B guibg=#291E3E ctermfg=240 ctermbg=236
hi TabLineSel       guifg=#F1EBFF guibg=#362853 ctermfg=255 ctermbg=237
hi ToolbarLine      guibg=#453762 ctermbg=239
hi ToolbarButton    guibg=#9180B3 ctermbg=103
hi Pmenu        guifg=#E1D9F2 guibg=#291E3E ctermfg=189 ctermbg=236
hi PmenuSel     guifg=#1B1429 guibg=#5CADD6 ctermfg=234 ctermbg=74
hi PmenuSbar    guibg=#362853 ctermbg=237
hi PmenuThumb   guibg=#453762 ctermbg=239
hi ErrorMsg     guifg=#D65C5C ctermfg=167 guibg=#1B1429 ctermfg=234
hi WarningMsg   guifg=#EBB447 ctermfg=179
hi ModeMsg      guifg=#5CADD6 ctermfg=74
hi MoreMsg      guifg=#DB70B8 ctermfg=169
hi Question     guifg=#5CADD6 ctermfg=74
hi Directory    guifg=#5CADD6 ctermfg=74

" == syntax =======================

hi Comment      guifg=#9180B3 gui=italic ctermfg=103 cterm=italic
hi Constant     guifg=#EBB447 ctermfg=179
hi String       guifg=#85D65C ctermfg=113
hi Identifier   guifg=#DB70B8 ctermfg=169
hi Function     guifg=#5CADD6 ctermfg=74
hi Statement    guifg=#8F7DE8 gui=bold ctermfg=104 cterm=bold
hi PreProc      guifg=#8F7DE8 ctermfg=104
hi Type         guifg=#EBB447 ctermfg=179
hi Special      guifg=#5CADD6 ctermfg=74
hi Underlined   guifg=#5CADD6 gui=underline ctermfg=74 cterm=underline
hi Title        guifg=#DB70B8 gui=bold cterm=bold term=bold ctermfg=169
hi Todo         guifg=#1B1429 guibg=#EBB447 ctermfg=234 ctermbg=179
hi Error        guifg=#F1EBFF guibg=#D65C5C ctermfg=255 ctermbg=167

" == diff =========================

hi DiffAdd      guibg=#85D65C ctermbg=113 guifg=#1B1429 ctermfg=234
hi DiffChange   guibg=#EBB447 ctermbg=179 guifg=#1B1429 ctermfg=234
hi DiffDelete   guibg=#D65C5C ctermbg=167 guifg=#1B1429 ctermfg=234
hi DiffText     guibg=#5CADD6 ctermbg=74 guifg=#1B1429 ctermfg=234

" == spell ========================

hi SpellBad     guifg=#D65C5C ctermfg=167 gui=underline
hi SpellCap     guifg=#EBB447 ctermfg=179 gui=underline
hi SpellLocal   guifg=#85D65C ctermfg=113 gui=underline
hi SpellRare    guifg=#5CADD6 ctermfg=74 gui=underline

" == term =========================

let g:terminal_ansi_colors = [
      \ '#171122', '#D65C5C', '#85D65C', '#EBB447',
      \ '#5CADD6', '#8F7DE8', '#DB70B8', '#E1D9F2',
      \ '#2E2442', '#F0A8A8', '#C0F0A8', '#FADB9E',
      \ '#A8D8F0', '#B1A3F5', '#EC93CE', '#F1EBFF'
      \ ]

let g:terminal_color_0  = '#171122'
let g:terminal_color_1  = '#D65C5C'
let g:terminal_color_2  = '#85D65C'
let g:terminal_color_3  = '#EBB447'
let g:terminal_color_4  = '#5CADD6'
let g:terminal_color_5  = '#8F7DE8'
let g:terminal_color_6  = '#DB70B8'
let g:terminal_color_7  = '#E1D9F2'
let g:terminal_color_8  = '#2E2442'
let g:terminal_color_9  = '#F0A8A8'
let g:terminal_color_10 = '#C0F0A8'
let g:terminal_color_11 = '#FADB9E'
let g:terminal_color_12 = '#A8D8F0'
let g:terminal_color_13 = '#B1A3F5'
let g:terminal_color_14 = '#EC93CE'
let g:terminal_color_15 = '#F1EBFF'
