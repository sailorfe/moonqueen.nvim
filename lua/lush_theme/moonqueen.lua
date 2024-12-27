--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

local base0     = hsl(257, 44, 6)
local base1     = hsl(257, 44, 18)
local base2     = hsl(257, 44, 30)
local accent0	= hsl(250, 40, 12)
local accent1	= hsl(250, 40, 18)
local accent2	= hsl(250, 40, 24)
local text0     = hsl(252, 45, 89)
local text1     = hsl(252, 25, 69)
local text2     = hsl(252, 15, 49)
local black0    = hsl(258, 45, 16)
local black1    = hsl(258, 35, 26)
local black2    = hsl(258, 55, 13)
local moon0		= hsl(319, 97, 77)
local moon1     = hsl(319, 97, 87)
local moon2     = hsl(319, 97, 72)
local mercury0  = hsl(214, 75, 60)
local mercury1  = hsl(214, 75, 70)
local mercury2  = hsl(214, 75, 55)
local mars0		= hsl(357, 93, 58)
local mars1		= hsl(357, 93, 68)
local mars2		= hsl(357, 88, 42)
local jupiter0  = hsl(86, 66, 39)
local jupiter1  = hsl(86, 66, 56)
local jupiter2  = hsl(86, 66, 34)
local venus0	= hsl(55, 97, 54)
local venus1	= hsl(55, 97, 74)
local venus2	= hsl(36, 97, 64)
local saturn0   = hsl(253, 88, 68)
local saturn1   = hsl(253, 88, 78)
local saturn2   = hsl(253, 88, 63)
local white0	= hsl(257, 42, 84)
local white1	= hsl(257, 42, 90)
local white2	= hsl(257, 42, 96)

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups
    --
    ColorColumn		{ bg = black2 }, -- Columns set with 'colorcolumn'
    -- Conceal        { }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
	Cursor			{ bg = text0, fg = base0 }, -- Character under the cursor
    CurSearch		{ bg = saturn1, fg = black1 }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
    -- lCursor        { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM       { }, -- Like Cursor, but used when in IME mode |CursorIM|
    CursorColumn	{ bg = base1 }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine		{ bg = base1 }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory		{ fg = venus0 }, -- Directory names (and other special names in listings)
    DiffAdd			{ bg = jupiter0, fg = base0}, -- Diff mode: Added line |diff.txt|
    DiffChange		{ bg = venus0, fg = base0}, -- Diff mode: Changed line |diff.txt|
    DiffDelete		{ bg = mars1, fg = base0}, -- Diff mode: Deleted line |diff.txt|
    DiffText		{ fg = mars1 }, -- Diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer    { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    TermCursor     { Cursor }, -- Cursor in a focused terminal
    TermCursorNC   { bg = accent1, fg = text0 }, -- Cursor in an unfocused terminal
    ErrorMsg		{ fg = mars0 }, -- Error messages on the command line
    -- VertSplit      { }, -- Column separating vertically split windows
    -- Folded         { }, -- Line used for closed folds
    -- FoldColumn     { }, -- 'foldcolumn'
    SignColumn		{ bg = base0 }, -- Column where |signs| are displayed
    IncSearch		{ bg = venus2, fg = base0 }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute		{ bg = venus1, fg = black1 }, -- |:substitute| replacement text highlighting
    LineNr			{ fg = text1, bg = accent1 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    LineNrAbove		{ fg = text1 }, -- Line number for when the 'relativenumber' option is set, above the cursor line
	LineNrBelow		{ LineNrAbove }, -- Line number for when the 'relativenumber' option is set, below the cursor line
    CursorLineNr	{ fg = moon0, gui = "bold" }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
    -- CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line
    MatchParen		{ bg = moon1, fg = black2, gui = "bold" }, -- Character under the cursor or just before it, if it is a paimoon bracket, and its match. |pi_paren.txt|
    ModeMsg			{ fg = mercury1 }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea        { }, -- Area for messages and cmdline
    -- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg			{ fg = venus0 }, -- |more-prompt|
    NonText			{ fg = saturn1 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal			{ bg = base0, fg = text0 }, -- Normal text
    -- NormalFloat    { }, -- Normal text in floating windows.
    -- FloatBorder    { }, -- Border of floating windows.
    -- FloatTitle     { }, -- Title of floating windows.
    -- NormalNC       { }, -- normal text in non-current windows
    Pmenu			{ fg = text0, bg = base2 }, -- Popup menu: Normal item.
    PmenuSel		{ fg = moon0 }, -- Popup menu: Selected item.
    -- PmenuKind      { }, -- Popup menu: Normal item "kind"
    -- PmenuKindSel   { }, -- Popup menu: Selected item "kind"
    -- PmenuExtra     { }, -- Popup menu: Normal item "extra text"
    -- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text"
    -- PmenuSbar      { }, -- Popup menu: Scrollbar.
    -- PmenuThumb     { }, -- Popup menu: Thumb of the scrollbar.
    Question		{ fg = saturn1 }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine	{ fg = saturn1 }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search			{ bg = saturn0, fg = base2 }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    -- SpecialKey     { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-whitespace|
    SpellBad		{ fg = base0, bg = mars0, gui = "underline" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap		{ fg = base0, bg = venus0, gui = "underline" }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal		{ fg = base0, bg = jupiter0, gui = "underline" }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare		{ fg = base0, bg = mercury0, gui = "underline" }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLine		{ bg = accent2, fg = white1, gui = "bold" }, -- Status line of current window
    StatusLineNC	{ bg = base1, fg = text1 }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine			{ fg = text1, bg = base2 }, -- Tab pages line, not active tab page label
    TabLineFill		{ bg = base2 }, -- Tab pages line, where there are no labels
    -- TabLineSel     { }, -- Tab pages line, active tab page label
    Title			{ fg = text0 }, -- Titles for output from ":set all", ":autocmd" etc.
    Visual			{ Cursor }, -- Visual mode selection
    -- VisualNOS      { }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg		{ fg = mars0 }, -- Warning messages
    -- whitespace     { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    Winseparator	{ fg = accent0 }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    -- WildMenu       { }, -- Current match in 'wildmenu' completion
    -- WinBar         { }, -- Window bar of current window
    -- WinBarNC       { }, -- Window bar of not-current windows

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their prefermoon (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment			{ fg = text1, gui = "italic" }, -- Any comment

    Constant		{ fg = jupiter0 }, -- (*) Any constant
    String			{ fg = white0 }, --   A string constant: "this is a string"
    -- Character      { }, --   A character constant: 'c', '\n'
    Number			{ fg = mercury1 }, --   A number constant: 234, 0xff
    -- Boolean        { }, --   A boolean constant: TRUE, false
    -- Float          { }, --   A floating point constant: 2.3e10

    Identifier		{ fg = moon0 }, -- (*) Any variable name
    Function		{ fg = moon1 }, --   Function name (also: methods for classes)

    Statement		{ fg = saturn0, gui = "bold" }, -- (*) Any statement
    Conditional		{ fg = venus0, gui = "bold" }, --   if, then, else, endif, switch, etc.
    Repeat			{ fg = mercury0 }, --   for, do, while, etc.
    Label			{ Conditional }, --   case, default, etc.
    Operator		{ fg = venus1 }, --   "sizeof", "+", "*", etc.
    Keyword			{ fg = mercury0 }, --   any other keyword
    Exception		{ fg = mars0 }, --   try, catch, throw

    PreProc			{ fg = mars0 }, -- (*) Generic Preprocessor
    Include			{ fg = moon0 }, --   Preprocessor #include
    Define			{ fg = venus0 }, --   Preprocessor #define
    Macro			{ Define }, --   Same as Define
    PreCondit		{ fg = mars1 }, --   Preprocessor #if, #else, #endif, etc.

    Type			{ fg = moon0 }, -- (*) int, long, char, etc.
    StorageClass	{ fg = venus0 }, --   static, register, volatile, etc.
    -- Structure      { }, --   struct, union, enum, etc.
    -- Typedef        { }, --   A typedef

    Special			{ fg = saturn1 }, -- (*) Any special symbol
    SpecialChar		{ Special }, --   Special character in a constant
    Tag				{ Special }, --   You can use CTRL-] on this
    Delimiter		{ Special }, --   Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
    Debug			{ Special }, --   Debugging statements

    Underlined		{ fg = white2, gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error			{ bg = moon0, fg = base0 }, -- Any erroneous construct
    Todo			{ fg = mars0 }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError            { fg = mars0 } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn             { fg = venus2 } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo             { fg = saturn1 } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint             { fg = mercury1 } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticOk               { fg = jupiter1 } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
    DiagnosticUnderlineError   { fg = mars0, gui = "underline" } , -- Used to underline "Error" diagnostics.
    DiagnosticUnderlineWarn    { fg = venus1, gui = "underline" } , -- Used to underline "Warn" diagnostics.
    DiagnosticUnderlineInfo    { fg = saturn1, gui = "underline" } , -- Used to underline "Info" diagnostics.
    DiagnosticUnderlineHint    { fg = mercury1, gui = "underline" } , -- Used to underline "Hint" diagnostics.
    DiagnosticUnderlineOk      { fg = jupiter1, gui = "underline" } , -- Used to underline "Ok" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
    -- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.

    -- Tree-Sitter syntax groups.
    --
    -- See :h treesitter-highlight-groups, some groups may not be listed,
    -- submit a PR fix to lush-template!
    --
    -- Tree-Sitter groups are defined with an "@" symbol, which must be
    -- specially handled to be valid lua code, we do this via the special
    -- sym function. The following are all valid ways to call the sym function,
    -- for more details see https://www.lua.org/pil/5.html
    --
    -- sym("@text.literal")
    -- sym('@text.literal')
    -- sym"@text.literal"
    -- sym'@text.literal'
    --
    -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

    -- sym"@text.literal"      { }, -- Comment
    -- sym"@text.reference"    { }, -- Identifier
    -- sym"@text.title"        { }, -- Title
    -- sym"@text.uri"          { }, -- Underlined
    -- sym"@text.underline"    { }, -- Underlined
    -- sym"@text.todo"         { }, -- Todo
    -- sym"@comment"           { }, -- Comment
    -- sym"@punctuation"       { }, -- Delimiter
    -- sym"@constant"          { }, -- Constant
    -- sym"@constant.builtin"  { }, -- Special
    -- sym"@constant.macro"    { }, -- Define
    -- sym"@define"            { }, -- Define
    -- sym"@macro"             { }, -- Macro
    -- sym"@string"            { }, -- String
    -- sym"@string.escape"     { }, -- SpecialChar
    -- sym"@string.special"    { }, -- SpecialChar
    -- sym"@character"         { }, -- Character
    -- sym"@character.special" { }, -- SpecialChar
    -- sym"@number"            { }, -- Number
    -- sym"@boolean"           { }, -- Boolean
    -- sym"@float"             { }, -- Float
    -- sym"@function"          { }, -- Function
    -- sym"@function.builtin"  { }, -- Special
    -- sym"@function.macro"    { }, -- Macro
    -- sym"@parameter"         { }, -- Identifier
    -- sym"@method"            { }, -- Function
    -- sym"@field"             { }, -- Identifier
    -- sym"@property"          { }, -- Identifier
    -- sym"@constructor"       { }, -- Special
    -- sym"@conditional"       { }, -- Conditional
    -- sym"@repeat"            { }, -- Repeat
    -- sym"@label"             { }, -- Label
    -- sym"@operator"          { }, -- Operator
    -- sym"@keyword"           { }, -- Keyword
    -- sym"@exception"         { }, -- Exception
    sym"@variable"          { fg = text0 }, -- Identifier
    -- sym"@type"              { }, -- Type
    -- sym"@type.definition"   { }, -- Typedef
    -- sym"@storageclass"      { }, -- StorageClass
    -- sym"@structure"         { }, -- Structure
    -- sym"@namespace"         { }, -- Identifier
    -- sym"@include"           { }, -- Include
    -- sym"@preproc"           { }, -- PreProc
    -- sym"@debug"             { }, -- Debug
    -- sym"@tag"               { }, -- Tag
}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
