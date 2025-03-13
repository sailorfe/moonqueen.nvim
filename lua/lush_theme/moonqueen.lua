local lush = require('lush')
local hsl = lush.hsl

local tuxedo		= hsl(240, 24, 10)
local kamen			= hsl(240, 24, 11)
local midnight	= hsl(240, 24, 12)
local twilight	=	hsl(240, 36, 18)
local moonlight	= hsl(240, 36, 24)
local millennium	= hsl(240, 36, 30)
local silver		= hsl(240, 18, 48)
local diana			= hsl(240, 24, 60)
local crystal		= hsl(240, 72, 84)
local artemis		= hsl(240, 72, 90)
local mugen			= hsl(252, 36, 36)
local infinity	= hsl(252, 60, 72)
local moon			= hsl(312, 72, 68)
local usagi			= hsl(312, 84, 80)
local mercury		= hsl(216, 72, 60)
local ami				= hsl(216, 84, 72)
local mars			= hsl(357, 84, 60)
local rei				= hsl(357, 96, 72)
local jupiter		= hsl(86, 66, 39)
local makoto		= hsl(72, 48, 60)
local saturn		= hsl(246, 84, 72)
local hotaru		= hsl(246, 96, 84)
local venus			= hsl(42, 100, 60)
local minako		= hsl(42, 100, 72)

local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    ColorColumn    { bg = moonlight },
    Conceal        { fg = silver },
    Cursor         { bg = crystal, fg = midnight },
    CurSearch      { bg = minako, fg = twilight },
    lCursor        { Cursor },
    CursorIM       { Cursor },
    CursorColumn   { bg = twilight },
    CursorLine     { CursorColumn },
    Directory      { fg = saturn },
    DiffAdd        { bg = usagi, fg = midnight, gui = "bold" },
    DiffChange     { bg = millennium, fg = artemis, gui = "bold" },
    DiffDelete     { fg = rei, bg = midnight, gui = "bold"},
    DiffText       { bg = moon, fg = midnight },
    EndOfBuffer    { fg = silver },
    TermCursor     { bg = diana, fg = midnight },
    TermCursorNC   { fg = diana },
    ErrorMsg       { bg = twilight, fg = mars },
    VertSplit      { fg = twilight },
    Folded         { bg = kamen, fg = crystal },
    FoldColumn     { fg = millennium },
    SignColumn     { FoldColumn },
    IncSearch      { CurSearch },
    Substitute     { bg = venus, fg = moonlight },
    LineNr         { bg = mugen, fg = infinity },
    LineNrAbove    { LineNr },
    LineNrBelow    { LineNr },
    CursorLineNr   { bg = twilight, fg = usagi, gui = "bold" },
    CursorLineFold { FoldColumn },
    CursorLineSign { FoldColumn },
    MatchParen     { bg = mugen, fg = artemis, gui = "bold"},
    ModeMsg        { fg = moon },
    MsgArea        { fg = diana },
    MsgSeparator   { bg = diana, fg = midnight },
    MoreMsg        { fg = millennium },
    NonText        { fg = silver },
    Normal         { bg = midnight, fg = crystal },
    NormalFloat    { bg = kamen, fg = diana },
    FloatBorder    { NormalFloat },
    FloatTitle     { fg = crystal, gui = "bold" },
    NormalNC       { fg = silver },
    Pmenu          { bg = kamen, fg = crystal },
    PmenuSel       { bg = crystal, fg = kamen },
    PmenuKind      { Pmenu },
    PmenuKindSel   { PmenuSel },
    PmenuExtra     { Pmenu },
    PmenuExtraSel  { PmenuSel},
    PmenuSbar      { Pmenu },
    PmenuThumb     { bg = silver, fg = artemis },
    Question       { fg = usagi },
    QuickFixLine   { Question },
    Search         { IncSearch },
    SpecialKey     { fg = diana },
    SpellBad       { fg = mars, gui = "undercurl" },
    SpellCap       { fg = ami, gui = "undercurl" },
    SpellLocal     { fg = makoto, gui = "undercurl" },
    SpellRare      { fg = venus, gui= "undercurl" },
    StatusLine     { bg = moonlight },
    StatusLineNC   { bg = twilight },
    TabLine        { bg = kamen, fg = silver },
    TabLineFill    { bg = tuxedo },
    TabLineSel     { bg = infinity, fg = midnight, gui = "italic" },
    Title          { gui = "bold" },
    Visual         { bg = infinity, fg = midnight },
    VisualNOS      { bg = mugen, fg = crystal },
    WarningMsg     { fg = hotaru },
    Whitespace     { fg = millennium },
    Winseparator   { VertSplit },
    WildMenu       { Cursor },
    WinBar         { bg = tuxedo, gui = "bold" },
    WinBarNC       { bg = tuxedo },

    Comment        { fg = silver, gui = "italic" },

    Constant       { fg = venus },
    String         { fg = hotaru },
    Character      { fg = makoto },
    Number         { Character },
    Boolean        { Character },
    Float          { Character },

    Identifier     { fg = saturn },
    Function       { fg = ami },

    Statement      { fg = rei, gui = "bold" },
    Conditional    { Statement },
    Repeat         { Statement },
    Label          { Statement },
    Operator       { fg = moon },
    Keyword        { Statement },
    Exception      { Statement },

    PreProc        { fg = hotaru },
    Include        { PreProc },
    Define         { PreProc },
    Macro          { PreProc },
    PreCondit      { PreProc },

    Type           { fg = mercury },
    StorageClass   { Type },
    Structure      { Type },
    Typedef        { Type },

    Special        { fg = usagi },
    SpecialChar    { fg = minako },
    Tag            { Special },
    Delimiter      { fg = moon },
    SpecialComment { Special },
    Debug          { Special },

    Underlined     { gui = "underline" },
    Ignore         { fg = diana },
    Error          { bg = mars, fg = midnight },
    Todo           { gui = "bold" },

    LspReferenceText            { Visual },
    LspReferenceRead            { Visual },
    LspReferenceWrite           { Visual },
    LspCodeLens                 { Comment },
    LspCodeLensSeparator        { Comment },
    LspSignatureActiveParameter { Visual },

    DiagnosticError            { fg = rei },
    DiagnosticWarn             { fg = minako },
    DiagnosticInfo             { fg = hotaru },
    DiagnosticHint             { fg = mercury },
    DiagnosticOk               { fg = makoto },
    DiagnosticVirtualTextError { DiagnosticError },
    DiagnosticVirtualTextWarn  { DiagnosticWarn},
    DiagnosticVirtualTextInfo  { DiagnosticInfo },
    DiagnosticVirtualTextHint  { DiagnosticHint },
    DiagnosticVirtualTextOk    { DiagnosticOk },
    DiagnosticUnderlineError   { DiagnosticError, gui = "underline" },
    DiagnosticUnderlineWarn    { DiagnosticWarn, gui = "underline" },
    DiagnosticUnderlineInfo    { DiagnosticInfo, gui = "underline" },
    DiagnosticUnderlineHint    { DiagnosticHint, gui = "underline" },
    DiagnosticUnderlineOk      { DiagnosticOk, gui = "underline" },
    DiagnosticFloatingError    { DiagnosticError },
    DiagnosticFloatingWarn     { DiagnosticWarn },
    DiagnosticFloatingInfo     { DiagnosticInfo },
    DiagnosticFloatingHint     { DiagnosticHint } ,
    DiagnosticFloatingOk       { DiagnosticOk },
    DiagnosticSignError        { DiagnosticError },
    DiagnosticSignWarn         { DiagnosticWarn },
    DiagnosticSignInfo         { DiagnosticInfo },
    DiagnosticSignHint         { DiagnosticHint },
    DiagnosticSignOk           { DiagnosticOk},

    sym"@text.literal"      { Comment },
    sym"@text.reference"    { Identifier },
    sym"@text.title"        { Title },
    sym"@text.uri"          { Underlined },
    sym"@text.underline"    { Underlined },
    sym"@text.todo"         { Todo },
    sym"@comment"           { Comment },
    sym"@punctuation"       { Delimiter },
    sym"@constant"          { Constant },
    sym"@constant.builtin"  { Special },
    sym"@constant.macro"    { Define },
    sym"@define"            { Define },
    sym"@macro"             { Macro },
    sym"@string"            { String },
    sym"@string.escape"     { SpecialChar },
    sym"@string.special"    { SpecialChar },
    sym"@character"         { Character },
    sym"@character.special" { SpecialChar },
    sym"@number"            { Number },
    sym"@boolean"           { Boolean },
    sym"@float"             { Float },
    sym"@function"          { Function },
    sym"@function.builtin"  { Special },
    sym"@function.macro"    { Macro },
    sym"@parameter"         { Identifier },
    sym"@method"            { Function },
    sym"@field"             { Identifier },
    sym"@property"          { Identifier },
    sym"@constructor"       { Special },
    sym"@conditional"       { Conditional },
    sym"@repeat"            { Repeat },
    sym"@label"             { Label },
    sym"@operator"          { Operator },
    sym"@keyword"           { Keyword },
    sym"@exception"         { Exception },
    sym"@variable"          { Identifier },
    sym"@type"              { Type },
    sym"@type.definition"   { Typedef },
    sym"@storageclass"      { StorageClass },
    sym"@structure"         { Structure },
    sym"@namespace"         { Identifier },
    sym"@include"           { Include },
    sym"@preproc"           { PreProc },
    sym"@debug"             { Debug },
    sym"@tag"               { Tag },
}
end)

return theme
