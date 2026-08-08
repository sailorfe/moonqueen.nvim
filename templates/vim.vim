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

hi Normal       guifg=[[text]] guibg=[[base]] ctermfg=[[text-cterm]] ctermbg=[[base-cterm]]
hi NonText      guifg=[[muted]] ctermfg=[[muted-cterm]]
hi EndOfBuffer  guifg=[[muted]] ctermfg=[[muted-cterm]]
hi SpecialKey   guifg=[[moon]] ctermfg=[[moon-cterm]]
hi ColorColumn  guibg=[[surface]] ctermbg=[[surface-cterm]]
hi Cursor       guifg=[[base]] guibg=[[light]] ctermfg=[[base-cterm]] ctermbg=[[light-cterm]]
hi CursorLine   guibg=[[overlay]] ctermbg=[[overlay-cterm]] cterm=NONE gui=NONE
hi CursorColumn guibg=[[overlay]] ctermbg=[[overlay-cterm]]
hi CursorLineNr guifg=[[light]] guibg=[[overlay]] ctermfg=[[light-cterm]] ctermbg=[[overlay-cterm]]
hi LineNr       guifg=[[muted]] ctermfg=[[muted-cterm]]
hi MatchParen   guifg=[[light]] guibg=[[overlay]] gui=bold ctermfg=[[light-cterm]] ctermbg=[[overlay-cterm]] cterm=bold
hi SignColumn   guifg=[[faint]] ctermbg=[[faint-cterm]] guibg=[[overlay]] ctermbg=[[overlay-cterm]]
hi FoldColumn   guifg=[[high]] guibg=[[low]] ctermfg=[[high-cterm]] ctermbg=[[low-cterm]]
hi Folded       guifg=[[faint]] ctermfg=[[faint-cterm]] guibg=[[overlay]] ctermbg=[[overlay-cterm]]
hi Conceal      guifg=[[muted]] ctermbg=[[muted-cterm]] guibg=[[surface]] ctermbg=[[surface-cterm]]
hi Visual       guibg=[[moon]] guifg=[[base]] ctermbg=[[moon-cterm]] ctermfg=[[base-cterm]]
hi Search       guifg=[[base]] guibg=[[venus]] ctermfg=[[base-cterm]] ctermbg=[[venus-cterm]]
hi IncSearch    guifg=[[base]] guibg=[[mercury]] ctermfg=[[base-cterm]] ctermbg=[[mercury-cterm]]
hi QuickFixLine guibg=[[overlay]] ctermbg=[[overlay-cterm]]
hi WildMenu     guifg=[[base]] guibg=[[text]] ctermfg=[[base-cterm]] ctermbg=[[text-cterm]]
hi StatusLine       term=bold cterm=bold guifg=[[light]] guibg=[[surface]] ctermfg=[[light-cterm]] ctermbg=[[surface-cterm]]
hi StatusLineNC     term=bold cterm=bold guifg=[[muted]] guibg=[[base]] ctermfg=[[muted-cterm]] ctermbg=[[base-cterm]]
hi StatusLineTerm   term=bold cterm=bold ctermfg=[[base-cterm]] guibg=[[jupiter]] ctermbg=[[jupiter-cterm]]
hi StatusLineTermNC term=bold cterm=bold ctermfg=[[base-cterm]] guibg=[[makoto]] ctermbg=[[makoto-cterm]]
hi VertSplit        guifg=[[surface]] guibg=[[base]] ctermfg=[[surface-cterm]] ctermbg=[[base-cterm]]
hi TabLine          guifg=[[muted]] guibg=[[surface]] ctermfg=[[muted-cterm]] ctermbg=[[surface-cterm]]
hi TabLineSel       guifg=[[light]] guibg=[[overlay]] ctermfg=[[light-cterm]] ctermbg=[[overlay-cterm]]
hi ToolbarLine      guibg=[[high]] ctermbg=[[high-cterm]]
hi ToolbarButton    guibg=[[faint]] ctermbg=[[faint-cterm]]
hi Pmenu        guifg=[[text]] guibg=[[surface]] ctermfg=[[text-cterm]] ctermbg=[[surface-cterm]]
hi PmenuSel     guifg=[[base]] guibg=[[mercury]] ctermfg=[[base-cterm]] ctermbg=[[mercury-cterm]]
hi PmenuSbar    guibg=[[overlay]] ctermbg=[[overlay-cterm]]
hi PmenuThumb   guibg=[[high]] ctermbg=[[high-cterm]]
hi ErrorMsg     guifg=[[mars]] ctermfg=[[mars-cterm]] guibg=[[base]] ctermfg=[[base-cterm]]
hi WarningMsg   guifg=[[venus]] ctermfg=[[venus-cterm]]
hi ModeMsg      guifg=[[mercury]] ctermfg=[[mercury-cterm]]
hi MoreMsg      guifg=[[moon]] ctermfg=[[moon-cterm]]
hi Question     guifg=[[mercury]] ctermfg=[[mercury-cterm]]
hi Directory    guifg=[[mercury]] ctermfg=[[mercury-cterm]]

" == syntax =======================

hi Comment      guifg=[[faint]] gui=italic ctermfg=[[faint-cterm]] cterm=italic
hi Constant     guifg=[[venus]] ctermfg=[[venus-cterm]]
hi String       guifg=[[jupiter]] ctermfg=[[jupiter-cterm]]
hi Identifier   guifg=[[moon]] ctermfg=[[moon-cterm]]
hi Function     guifg=[[mercury]] ctermfg=[[mercury-cterm]]
hi Statement    guifg=[[saturn]] gui=bold ctermfg=[[saturn-cterm]] cterm=bold
hi PreProc      guifg=[[saturn]] ctermfg=[[saturn-cterm]]
hi Type         guifg=[[venus]] ctermfg=[[venus-cterm]]
hi Special      guifg=[[mercury]] ctermfg=[[mercury-cterm]]
hi Underlined   guifg=[[mercury]] gui=underline ctermfg=[[mercury-cterm]] cterm=underline
hi Title        guifg=[[moon]] gui=bold cterm=bold term=bold ctermfg=[[moon-cterm]]
hi Todo         guifg=[[base]] guibg=[[venus]] ctermfg=[[base-cterm]] ctermbg=[[venus-cterm]]
hi Error        guifg=[[light]] guibg=[[mars]] ctermfg=[[light-cterm]] ctermbg=[[mars-cterm]]

" == diff =========================

hi DiffAdd      guibg=[[jupiter]] ctermbg=[[jupiter-cterm]] guifg=[[base]] ctermfg=[[base-cterm]]
hi DiffChange   guibg=[[venus]] ctermbg=[[venus-cterm]] guifg=[[base]] ctermfg=[[base-cterm]]
hi DiffDelete   guibg=[[mars]] ctermbg=[[mars-cterm]] guifg=[[base]] ctermfg=[[base-cterm]]
hi DiffText     guibg=[[mercury]] ctermbg=[[mercury-cterm]] guifg=[[base]] ctermfg=[[base-cterm]]

" == spell ========================

hi SpellBad     guifg=[[mars]] ctermfg=[[mars-cterm]] gui=underline
hi SpellCap     guifg=[[venus]] ctermfg=[[venus-cterm]] gui=underline
hi SpellLocal   guifg=[[jupiter]] ctermfg=[[jupiter-cterm]] gui=underline
hi SpellRare    guifg=[[mercury]] ctermfg=[[mercury-cterm]] gui=underline

" == term =========================

let g:terminal_ansi_colors = [
      \ '[[low]]', '[[mars]]', '[[jupiter]]', '[[venus]]',
      \ '[[mercury]]', '[[saturn]]', '[[moon]]', '[[text]]',
      \ '[[med]]', '[[rei]]', '[[makoto]]', '[[minako]]',
      \ '[[ami]]', '[[hotaru]]', '[[usagi]]', '[[light]]'
      \ ]

let g:terminal_color_0  = '[[low]]'
let g:terminal_color_1  = '[[mars]]'
let g:terminal_color_2  = '[[jupiter]]'
let g:terminal_color_3  = '[[venus]]'
let g:terminal_color_4  = '[[mercury]]'
let g:terminal_color_5  = '[[saturn]]'
let g:terminal_color_6  = '[[moon]]'
let g:terminal_color_7  = '[[text]]'
let g:terminal_color_8  = '[[med]]'
let g:terminal_color_9  = '[[rei]]'
let g:terminal_color_10 = '[[makoto]]'
let g:terminal_color_11 = '[[minako]]'
let g:terminal_color_12 = '[[ami]]'
let g:terminal_color_13 = '[[hotaru]]'
let g:terminal_color_14 = '[[usagi]]'
let g:terminal_color_15 = '[[light]]'
