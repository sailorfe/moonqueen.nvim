local lush = require('lush')
local hsl = lush.hsl

local tuxedo			= hsl(260, 36, 12)
local kamen				= hsl(260, 36, 14)
local midnight		= hsl(260, 36, 16)
local twilight		=	hsl(260, 36, 24)
local moonlight		= hsl(260, 36, 30)
local millennium	= hsl(260, 36, 36)
local silver			= hsl(260, 18, 48)
local diana				= hsl(260, 24, 60)
local crystal			= hsl(260, 72, 84)
local artemis			= hsl(260, 96, 90)
local nehellenia	= hsl(254, 36, 24)
local mugen				= hsl(254, 36, 36)
local deadmoon		= hsl(254, 36, 48)
local infinity		= hsl(254, 72, 72)
local moon				= hsl(324, 72, 68)
local usagi				= hsl(324, 84, 80)
local mercury			= hsl(216, 72, 60)
local ami					= hsl(216, 84, 72)
local mars				= hsl(357, 84, 60)
local rei					= hsl(357, 96, 72)
local jupiter			= hsl(86, 66, 39)
local makoto			= hsl(72, 48, 60)
local venus				= hsl(42, 100, 48)
local minako			= hsl(42, 100, 72)
local saturn			= hsl(248, 90, 72)
local hotaru			= hsl(248, 96, 84)
local uranus			= hsl(228, 72, 48)
local haruka			= hsl(228, 72, 60)
local neptune			= hsl(168, 36, 36)
local michiru			= hsl(168, 48, 48)
local pluto				= hsl(330, 60, 36)
local setsuna			= hsl(330, 48, 48)

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
		DiffAdd        { bg = neptune, fg = artemis, gui = "bold" },
		DiffChange     { bg = uranus, fg = crystal, gui = "bold" },
		DiffDelete     { bg = pluto, fg = crystal, gui = "bold" },
		DiffText       { fg = moon, gui = "bold_italic" },
		EndOfBuffer    { fg = silver },
		TermCursor     { bg = diana, fg = midnight },
		TermCursorNC   { fg = diana },
		ErrorMsg       { bg = twilight, fg = setsuna },
		VertSplit      { fg = twilight },
		Folded         { bg = kamen, fg = crystal },
		FoldColumn     { fg = millennium },
		SignColumn     { bg = nehellenia },
		IncSearch      { CurSearch },
		Substitute     { bg = venus, fg = moonlight },
		LineNr         { bg = mugen, fg = hotaru },
		LineNrAbove    { LineNr },
		LineNrBelow    { LineNr },
		CursorLineNr   { bg = twilight, fg = usagi, gui = "bold" },
		CursorLineFold { FoldColumn },
		CursorLineSign { FoldColumn },
		MatchParen     { bg = mugen, fg = usagi, gui = "bold"},
		ModeMsg        { fg = crystal, gui = "bold" },
		MsgArea        { fg = crystal },
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
		StatusLine     { Normal },
		StatusLineNC   { bg = tuxedo },
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
		Operator       { fg = minako },
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
		SpecialChar    { fg = michiru },
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

		DiagnosticError            { fg = mars },
		DiagnosticWarn             { fg = minako },
		DiagnosticInfo             { fg = ami },
		DiagnosticHint             { fg = moon },
		DiagnosticOk               { fg = jupiter },
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

		GitSignsAdd							{ fg = michiru },
		GitSignsChange					{ fg = haruka },
		GitSignsDelete					{ fg = setsuna },
		MiniDiffSignAdd					{ fg = michiru, gui = "italic" },
		MiniDiffSignChange			{ fg = haruka, gui = "italic" },
		MiniDiffSignDelete			{ fg = setsuna, gui = "italic" },
		MiniStatuslineModeNormal{ bg = deadmoon, fg = crystal  },
		MiniStatuslineModeInsert{ bg = crystal, fg = moonlight },
		MiniStatuslineModeVisual{ bg = minako, fg = twilight },
		MiniStatuslineModeReplace{ bg = rei, fg = moonlight },
		MiniStatuslineModeCommand{ bg = usagi, fg = moonlight },
		MiniStatuslineModeOther	{ bg = makoto, fg = twilight },
		MiniStatuslineDevinfo		{ bg = twilight, fg = crystal },
		MiniStatuslineFilename	{ Normal },
		MiniStatuslineFileinfo	{ MiniStatuslineDevinfo },
		MiniStatuslineInactive	{ bg = tuxedo, fg = infinity },
		MiniTablineCurrent			{ TabLineSel },
		MiniTablineVisible			{ fg = hotaru, bg = twilight },
		MiniTablineHidden				{ TabLine },
		MiniTablineModifiedCurrent { MiniTablineCurrent, gui = "bold_italic" },
		MiniTablineModifiedVisible { MiniTablineVisible, gui = "bold" },
		MiniTablineModifiedHidden { MiniTablineHidden, gui = "bold" },
		MiniTablineFill					{ TabLineFill },
		RenderMarkdownH1Bg			{ bg = twilight, fg = moon },
		RenderMarkdownH2Bg			{ bg = twilight, fg = mercury },
		RenderMarkdownH3Bg			{ bg = twilight, fg = venus },
		RenderMarkdownH4Bg			{ bg = twilight, fg = mars },
		RenderMarkdownH5Bg			{ bg = twilight, fg = jupiter },
		RenderMarkdownH6Bg			{ bg = twilight, fg = saturn },
		TroubleIndent						{ bg = kamen, fg = deadmoon },
		TroublePos							{ bg = kamen, fg = deadmoon }
	}
end)

return theme
