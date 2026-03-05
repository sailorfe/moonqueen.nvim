" moonqueen v0.2.1 by sailorfe
" built 2026-03-04
" https://codeberg.org/sailorfe/moonqueen.nvim

hi clear
if has('termguicolors')
  set termguicolors
endif

let g:colors_name='moonqueen'
set background=dark

highlight Normal guifg=#E1D9F2 guibg=#1B1429 guisp=NONE gui=NONE
highlight ColorColumn guifg=NONE guibg=#291E3E guisp=NONE gui=NONE
highlight Comment guifg=#9180B3 guibg=NONE guisp=NONE gui=italic
highlight Conceal guifg=#53476B guibg=NONE guisp=NONE gui=NONE
highlight Constant guifg=#EBB447 guibg=NONE guisp=NONE gui=NONE
highlight! link Boolean Constant
highlight! link Character Constant
highlight! link Float Constant
highlight! link Number Constant
highlight! link String Constant
highlight CurSearch guifg=#1B1429 guibg=#EBB447 guisp=NONE gui=NONE
highlight! link IncSearch CurSearch
highlight Cursor guifg=#1B1429 guibg=#E1D9F2 guisp=NONE gui=NONE
highlight! link CursorIM Cursor
highlight! link lCursor Cursor
highlight CursorColumn guifg=NONE guibg=#362853 guisp=NONE gui=NONE
highlight CursorLine guifg=NONE guibg=#362853 guisp=NONE gui=NONE
highlight CursorLineNr guifg=#E1D9F2 guibg=NONE guisp=NONE gui=bold
highlight Delimiter guifg=#E1D9F2 guibg=NONE guisp=NONE gui=NONE
highlight DiagnosticDeprecated guifg=#53476B guibg=NONE guisp=NONE
highlight DiagnosticError guifg=#D65C5C guibg=NONE guisp=NONE gui=NONE
highlight! link DiagnosticFloatingError DiagnosticError
highlight! link DiagnosticSignError DiagnosticError
highlight DiagnosticHint guifg=#DB70B8 guibg=NONE guisp=NONE gui=NONE
highlight! link DiagnosticFloatingHint DiagnosticHint
highlight! link DiagnosticSignHint DiagnosticHint
highlight DiagnosticInfo guifg=#5CADD6 guibg=NONE guisp=NONE gui=NONE
highlight! link DiagnosticFloatingInfo DiagnosticInfo
highlight! link DiagnosticSignInfo DiagnosticInfo
highlight DiagnosticOk guifg=#85D65C guibg=NONE guisp=NONE gui=NONE
highlight! link DiagnosticFloatingOk DiagnosticOk
highlight! link DiagnosticSignOk DiagnosticOk
highlight DiagnosticUnderlineError guifg=#D65C5C guibg=NONE guisp=NONE gui=underline
highlight DiagnosticUnderlineHint guifg=#DB70B8 guibg=NONE guisp=NONE gui=underline
highlight DiagnosticUnderlineInfo guifg=#5CADD6 guibg=NONE guisp=NONE gui=underline
highlight DiagnosticUnderlineOk guifg=#85D65C guibg=NONE guisp=NONE gui=underline
highlight DiagnosticUnderlineWarn guifg=#EBB447 guibg=NONE guisp=NONE gui=underline
highlight DiagnosticVirtualTextError guifg=#D65C5C guibg=NONE guisp=NONE gui=italic
highlight DiagnosticVirtualTextHint guifg=#DB70B8 guibg=NONE guisp=NONE gui=italic
highlight DiagnosticVirtualTextInfo guifg=#5CADD6 guibg=NONE guisp=NONE gui=italic
highlight DiagnosticVirtualTextOk guifg=#85D65C guibg=NONE guisp=NONE gui=italic
highlight DiagnosticVirtualTextWarn guifg=#EBB447 guibg=NONE guisp=NONE gui=italic
highlight DiagnosticWarn guifg=#EBB447 guibg=NONE guisp=NONE gui=NONE
highlight! link DiagnosticFloatingWarn DiagnosticWarn
highlight! link DiagnosticSignWarn DiagnosticWarn
highlight DiffAdd guifg=#1B1429 guibg=#85D65C guisp=NONE gui=NONE
highlight DiffChange guifg=#1B1429 guibg=#EBB447 guisp=NONE gui=NONE
highlight DiffDelete guifg=#D65C5C guibg=NONE guisp=NONE gui=bold
highlight DiffText guifg=#1B1429 guibg=#5CADD6 guisp=NONE gui=NONE
highlight Directory guifg=#5CADD6 guibg=NONE guisp=NONE gui=NONE
highlight EndOfBuffer guifg=#53476B guibg=NONE guisp=NONE gui=NONE
highlight Error guifg=#1B1429 guibg=#D65C5C guisp=NONE gui=NONE
highlight ErrorMsg guifg=#D65C5C guibg=NONE guisp=NONE gui=bold
highlight FloatBorder guifg=#53476B guibg=#291E3E guisp=NONE gui=NONE
highlight! link FloatFooter FloatBorder
highlight FloatTitle guifg=#DB70B8 guibg=#291E3E guisp=NONE gui=bold
highlight FoldColumn guifg=#453762 guibg=#291E3E guisp=NONE gui=NONE
highlight Folded guifg=#9180B3 guibg=#171122 guisp=NONE gui=NONE
highlight Function guifg=#DB70B8 guibg=NONE guisp=NONE gui=NONE
highlight Identifier guifg=#8F7DE8 guibg=NONE guisp=NONE gui=NONE
highlight Ignore guifg=#53476B guibg=NONE guisp=NONE gui=NONE
highlight LineNr guifg=#53476B guibg=NONE guisp=NONE gui=NONE
highlight! link LineNrAbove LineNr
highlight! link LineNrBelow LineNr
highlight MatchParen guifg=NONE guibg=#453762 guisp=NONE gui=bold
highlight MiniDiffSignAdd guifg=#85D65C guibg=NONE guisp=NONE gui=italic
highlight MiniDiffSignChange guifg=#EBB447 guibg=NONE guisp=NONE gui=italic
highlight MiniDiffSignDelete guifg=#D65C5C guibg=NONE guisp=NONE gui=italic
highlight MiniStatuslineDevinfo guifg=#E1D9F2 guibg=#362853 guisp=NONE gui=NONE
highlight! link MiniStatuslineFileinfo MiniStatuslineDevinfo
highlight MiniStatuslineFilename guifg=#9180B3 guibg=#291E3E guisp=NONE gui=NONE
highlight MiniStatuslineInactive guifg=#53476B guibg=#1B1429 guisp=NONE gui=NONE
highlight MiniStatuslineModeCommand guifg=#1B1429 guibg=#DB70B8 guisp=NONE gui=bold
highlight MiniStatuslineModeInsert guifg=#1B1429 guibg=#E1D9F2 guisp=NONE gui=bold
highlight MiniStatuslineModeNormal guifg=#E1D9F2 guibg=#453762 guisp=NONE gui=bold
highlight MiniStatuslineModeOther guifg=#1B1429 guibg=#85D65C guisp=NONE gui=bold
highlight MiniStatuslineModeReplace guifg=#1B1429 guibg=#D65C5C guisp=NONE gui=bold
highlight MiniStatuslineModeVisual guifg=#1B1429 guibg=#8F7DE8 guisp=NONE gui=bold
highlight MiniTablineVisible guifg=#EBB447 guibg=#291E3E guisp=NONE gui=NONE
highlight ModeMsg guifg=#E1D9F2 guibg=NONE guisp=NONE gui=bold
highlight MoreMsg guifg=#85D65C guibg=NONE guisp=NONE gui=NONE
highlight MsgArea guifg=#E1D9F2 guibg=NONE guisp=NONE gui=NONE
highlight MsgSeparator guifg=#362853 guibg=NONE guisp=NONE gui=NONE
highlight NonText guifg=#53476B guibg=NONE guisp=NONE gui=NONE
highlight NormalFloat guifg=#E1D9F2 guibg=#291E3E guisp=NONE gui=NONE
highlight NormalNC guifg=#9180B3 guibg=#1B1429 guisp=NONE gui=NONE
highlight Operator guifg=#E1D9F2 guibg=NONE guisp=NONE gui=NONE
highlight Pmenu guifg=#E1D9F2 guibg=#291E3E guisp=NONE gui=NONE
highlight PmenuExtra guifg=#53476B guibg=#291E3E guisp=NONE gui=NONE
highlight PmenuExtraSel guifg=#9180B3 guibg=#362853 guisp=NONE gui=NONE
highlight PmenuKind guifg=#8F7DE8 guibg=#291E3E guisp=NONE gui=NONE
highlight PmenuKindSel guifg=#8F7DE8 guibg=#362853 guisp=NONE gui=bold
highlight PmenuMatch guifg=#DB70B8 guibg=NONE guisp=NONE gui=bold
highlight PmenuMatchSel guifg=#DB70B8 guibg=NONE guisp=NONE gui=bold,underline
highlight PmenuSbar guifg=NONE guibg=#362853 guisp=NONE gui=NONE
highlight PmenuSel guifg=#DB70B8 guibg=#362853 guisp=NONE gui=bold
highlight PmenuThumb guifg=NONE guibg=#453762 guisp=NONE gui=NONE
highlight PreProc guifg=#5CADD6 guibg=NONE guisp=NONE gui=NONE
highlight! link Define PreProc
highlight! link Include PreProc
highlight! link Macro PreProc
highlight! link PreCondit PreProc
highlight Question guifg=#5CADD6 guibg=NONE guisp=NONE gui=NONE
highlight QuickFixLine guifg=NONE guibg=#362853 guisp=NONE gui=bold
highlight Search guifg=#EBB447 guibg=#2E2442 guisp=NONE gui=NONE
highlight SignColumn guifg=NONE guibg=#1B1429 guisp=NONE gui=NONE
highlight Special guifg=#8F7DE8 guibg=NONE guisp=NONE gui=NONE
highlight! link Debug Special
highlight! link SpecialChar Special
highlight! link Tag Special
highlight SpecialComment guifg=#9180B3 guibg=NONE guisp=NONE gui=bold
highlight SpecialKey guifg=#53476B guibg=NONE guisp=NONE gui=NONE
highlight SpellBad guifg=#D65C5C guibg=NONE guisp=NONE gui=underline
highlight SpellCap guifg=#EBB447 guibg=NONE guisp=NONE gui=underline
highlight SpellLocal guifg=#85D65C guibg=NONE guisp=NONE gui=underline
highlight SpellRare guifg=#5CADD6 guibg=NONE guisp=NONE gui=underline
highlight Statement guifg=#5CADD6 guibg=NONE guisp=NONE gui=bold
highlight! link Conditional Statement
highlight! link Exception Statement
highlight! link Keyword Statement
highlight! link Label Statement
highlight! link Repeat Statement
highlight StatusLine guifg=#E1D9F2 guibg=#362853 guisp=NONE gui=NONE
highlight StatusLineNC guifg=#53476B guibg=#291E3E guisp=NONE gui=NONE
highlight Substitute guifg=#1B1429 guibg=#5CADD6 guisp=NONE gui=NONE
highlight TabLine guifg=#53476B guibg=#291E3E guisp=NONE gui=NONE
highlight! link MiniTablineHidden TabLine
highlight TabLineFill guifg=NONE guibg=#1B1429 guisp=NONE gui=NONE
highlight TabLineSel guifg=#DB70B8 guibg=#362853 guisp=NONE gui=bold
highlight! link MiniTablineCurrent TabLineSel
highlight TermCursor guifg=#1B1429 guibg=#DB70B8 guisp=NONE gui=NONE
highlight TermCursorNC guifg=#1B1429 guibg=#9180B3 guisp=NONE gui=NONE
highlight Title guifg=#DB70B8 guibg=NONE guisp=NONE gui=bold
highlight Todo guifg=#EBB447 guibg=NONE guisp=NONE gui=bold
highlight TroubleIndent guifg=#9180B3 guibg=#291E3E guisp=NONE gui=NONE
highlight TroublePos guifg=#9180B3 guibg=#291E3E guisp=NONE gui=NONE
highlight Type guifg=#85D65C guibg=NONE guisp=NONE gui=NONE
highlight! link StorageClass Type
highlight! link Structure Type
highlight Typedef guifg=#85D65C guibg=NONE guisp=NONE gui=italic
highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline
highlight VertSplit guifg=#291E3E guibg=NONE guisp=NONE gui=NONE
highlight Visual guifg=NONE guibg=#453762 guisp=NONE gui=NONE
highlight! link VisualNOS Visual
highlight WarningMsg guifg=#EBB447 guibg=NONE guisp=NONE gui=NONE
highlight Whitespace guifg=#362853 guibg=NONE guisp=NONE gui=NONE
highlight WildMenu guifg=#1B1429 guibg=#E1D9F2 guisp=NONE gui=NONE
highlight WinBar guifg=#9180B3 guibg=#2E2442 guisp=NONE gui=NONE
highlight WinBarNC guifg=#53476B guibg=#2E2442 guisp=NONE gui=NONE
highlight WinSeparator guifg=#291E3E guibg=NONE guisp=NONE gui=NONE
highlight markdownH1 guifg=#DB70B8 guibg=NONE guisp=NONE gui=bold
highlight! link markdownH1Delimiter markdownH1
highlight markdownH2 guifg=#5CADD6 guibg=NONE guisp=NONE gui=bold
highlight! link markdownH2Delimiter markdownH2
highlight markdownH3 guifg=#D65C5C guibg=NONE guisp=NONE gui=bold
highlight! link markdownH3Delimiter markdownH3
highlight markdownH4 guifg=#85D65C guibg=NONE guisp=NONE gui=bold
highlight! link markdownH4Delimiter markdownH4
highlight markdownH5 guifg=#EBB447 guibg=NONE guisp=NONE gui=bold
highlight! link markdownH5Delimiter markdownH5
highlight markdownH6 guifg=#8F7DE8 guibg=NONE guisp=NONE gui=bold
highlight! link markdownH6Delimiter markdownH6
