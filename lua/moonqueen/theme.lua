local lush = require("lush")
local hsl = lush.hsl

-- base colors
local base = hsl(260, 35, 16)
local surface = hsl(260, 35, 24)
local overlay = hsl(260, 35, 32)
-- text colors
local muted = hsl(260, 20, 40)
local faint = hsl(260, 30, 70)
local text = hsl(260, 50, 90)
local light = hsl(260, 100, 96)
-- accent colors
local mars = hsl(360, 80, 65)
local jupiter = hsl(80, 60, 60)
local venus = hsl(40, 80, 60)
local mercury = hsl(200, 80, 70)
local saturn = hsl(250, 80, 70)
local moon = hsl(320, 80, 70)
-- highlights
local low = hsl(260, 30, 15)
local med = hsl(260, 25, 30)
local high = hsl(260, 20, 45)

---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
	local sym = injected_functions.sym
	return {
		-- ui
		Normal({ bg = base, fg = text }),
		NormalFloat({ bg = surface, fg = text }),
		NormalNC({ bg = base, fg = faint }),

		FloatBorder({ bg = surface, fg = muted }),
		FloatTitle({ bg = surface, fg = moon, gui = "bold" }),
		FloatFooter({ FloatBorder }),

		ColorColumn({ bg = surface }),
		Conceal({ fg = muted }),
		CursorLine({ bg = overlay }),
		CursorColumn({ bg = overlay }),
		CursorLineNr({ fg = text, gui = "bold" }),
		LineNr({ fg = muted }),
		LineNrAbove({ LineNr }),
		LineNrBelow({ LineNr }),

		SignColumn({ bg = base }),
		FoldColumn({ fg = high, bg = surface }),
		Folded({ bg = low, fg = faint }),

		StatusLine({ bg = overlay, fg = text }),
		StatusLineNC({ bg = surface, fg = muted }),
		WinBar({ bg = med, fg = faint }),
		WinBarNC({ bg = med, fg = muted }),
		WinSeparator({ fg = surface }), -- 0.9+
		VertSplit({ fg = surface }), -- for compatibility

		TabLine({ bg = surface, fg = muted }),
		TabLineFill({ bg = base }),
		TabLineSel({ bg = overlay, fg = moon, gui = "bold" }),

		Pmenu({ bg = surface, fg = text }),
		PmenuSel({ bg = overlay, fg = moon, gui = "bold" }),
		PmenuKind({ bg = surface, fg = saturn }),
		PmenuKindSel({ bg = overlay, fg = saturn, gui = "bold" }),
		PmenuExtra({ bg = surface, fg = muted }),
		PmenuExtraSel({ bg = overlay, fg = faint }),
		PmenuSbar({ bg = overlay }),
		PmenuThumb({ bg = high }),
		PmenuMatch({ fg = moon, gui = "bold" }), -- 0.11 fuzzy match
		PmenuMatchSel({ fg = moon, gui = "bold_underline" }),

		-- 0.11: popup/window title when using noice / native cmdline
		MsgArea({ fg = text }),
		MsgSeparator({ fg = overlay }),
		ModeMsg({ fg = text, gui = "bold" }),
		MoreMsg({ fg = jupiter }),
		Question({ fg = mercury }),
		WarningMsg({ fg = venus }),
		ErrorMsg({ fg = mars, gui = "bold" }),

		Cursor({ bg = text, fg = base }),
		lCursor({ Cursor }),
		CursorIM({ Cursor }),
		TermCursor({ bg = moon, fg = base }),
		TermCursorNC({ bg = faint, fg = base }),

		Visual({ bg = moon, fg = base }),
		VisualNOS({ Visual }),
		CurSearch({ bg = venus, fg = base }),
		IncSearch({ CurSearch }),
		Search({ bg = med, fg = venus }),
		Substitute({ bg = mercury, fg = base }),

		MatchParen({ bg = high, gui = "bold" }),

		NonText({ fg = muted }),
		Whitespace({ fg = overlay }),
		SpecialKey({ fg = muted }),
		EndOfBuffer({ fg = faint }),

		Directory({ fg = mercury }),
		Title({ fg = moon, gui = "bold" }),
		WildMenu({ bg = text, fg = base }),

		QuickFixLine({ bg = overlay, gui = "bold" }),

		-- diffs
		DiffAdd({ bg = jupiter, fg = base }),
		DiffChange({ bg = muted, fg = base }),
		DiffDelete({ fg = mars, gui = "bold" }),
		DiffText({ bg = mercury, fg = base }),

		-- spell
		SpellBad({ fg = mars, gui = "undercurl" }),
		SpellCap({ fg = venus, gui = "undercurl" }),
		SpellLocal({ fg = jupiter, gui = "undercurl" }),
		SpellRare({ fg = mercury, gui = "undercurl" }),

		-- misc
		Underlined({ gui = "underline" }),
		Ignore({ fg = muted }),
		Error({ bg = mars, fg = base }),
		Todo({ fg = venus, gui = "bold" }),

		-- traditional syntax
		Comment({ fg = faint, gui = "italic" }),

		Constant({ fg = venus }),
		String({ Constant }), -- maybe change
		Character({ Constant }),
		Number({ Constant }),
		Boolean({ Constant }),
		Float({ Constant }),

		Identifier({ fg = saturn }),
		Function({ fg = moon }),

		Statement({ fg = mercury, gui = "bold" }),
		Conditional({ Statement }),
		Repeat({ Statement }),
		Label({ Statement }),
		Operator({ fg = text }),
		Keyword({ Statement }), -- maybe change
		Exception({ Statement }),

		PreProc({ fg = mercury }),
		Include({ PreProc }),
		Define({ PreProc }),
		Macro({ PreProc }),
		PreCondit({ PreProc }),

		Type({ fg = jupiter }),
		StorageClass({ Type }),
		Structure({ Type }),
		Typedef({ fg = jupiter, gui = "italic" }),

		Special({ fg = saturn }),
		SpecialChar({ Special }),
		Tag({ Special }),
		Delimiter({ fg = text }),
		SpecialComment({ fg = faint, gui = "bold" }),
		Debug({ Special }),

		-- diagonistics
		DiagnosticError({ fg = mars }),
		DiagnosticWarn({ fg = venus }),
		DiagnosticInfo({ fg = mercury }),
		DiagnosticHint({ fg = moon }),
		DiagnosticOk({ fg = jupiter }),

		DiagnosticVirtualTextError({ DiagnosticError, gui = "italic" }),
		DiagnosticVirtualTextWarn({ DiagnosticWarn, gui = "italic" }),
		DiagnosticVirtualTextInfo({ DiagnosticInfo, gui = "italic" }),
		DiagnosticVirtualTextHint({ DiagnosticHint, gui = "italic" }),
		DiagnosticVirtualTextOk({ DiagnosticOk, gui = "italic" }),

		DiagnosticUnderlineError({ DiagnosticError, gui = "undercurl" }),
		DiagnosticUnderlineWarn({ DiagnosticWarn, gui = "undercurl" }),
		DiagnosticUnderlineInfo({ DiagnosticInfo, gui = "undercurl" }),
		DiagnosticUnderlineHint({ DiagnosticHint, gui = "undercurl" }),
		DiagnosticUnderlineOk({ DiagnosticOk, gui = "undercurl" }),

		DiagnosticFloatingError({ DiagnosticError }),
		DiagnosticFloatingWarn({ DiagnosticWarn }),
		DiagnosticFloatingInfo({ DiagnosticInfo }),
		DiagnosticFloatingHint({ DiagnosticHint }),
		DiagnosticFloatingOk({ DiagnosticOk }),

		DiagnosticSignError({ DiagnosticError }),
		DiagnosticSignWarn({ DiagnosticWarn }),
		DiagnosticSignInfo({ DiagnosticInfo }),
		DiagnosticSignHint({ DiagnosticHint }),
		DiagnosticSignOk({ DiagnosticOk }),

		-- 0.10+ inline diagnostic (virtual_lines)
		DiagnosticDeprecated({ gui = "strikethrough", fg = muted }),

		-- treesitter (0.9+)

		-- identifiers
		sym("@variable")({ fg = text, gui = "italic" }),
		sym("@variable.builtin")({ fg = moon, gui = "bold_italic" }),
		sym("@variable.parameter")({ Type }), -- (injected_functions)
		sym("@variable.member")({ fg = text }), -- struct fields, object keys

		sym("@constant")({ Constant }),
		sym("@constant.builtin")({ fg = venus, gui = "bold_italic" }),
		sym("@constant.macro")({ Define }),

		sym("@module")({ fg = venus }),
		sym("@module.builtin")({ fg = venus, gui = "bold_italic" }),
		sym("@label")({ fg = mercury }),

		-- literals
		sym("@string")({ String }),
		sym("@string.escape")({ fg = moon }),
		sym("@string.special")({ fg = moon }),
		sym("@string.regexp")({ fg = venus }),
		sym("@string.special.url")({ fg = mercury, gui = "underline" }),

		sym("@character")({ Character }),
		sym("@character.special")({ SpecialChar }),
		sym("@boolean")({ Boolean }),
		sym("@number")({ Number }),
		sym("@number.float")({ Float }),

		-- types
		sym("@type")({ Type }),
		sym("@type.builtin")({ fg = jupiter, gui = "bold_italic" }),
		sym("@type.definition")({ Typedef }),

		-- functions
		sym("@function")({ Function }),
		sym("@function.builtin")({ fg = saturn, gui = "bold_italic" }),
		sym("@function.macro")({ Macro }),
		sym("@function.method")({ Function }),
		sym("@constructor")({ fg = moon }),

		-- keywords
		sym("@keyword")({ Keyword }),
		sym("@keyword.function")({ fg = mercury, gui = "italic" }),
		sym("@keyword.operator")({ fg = mercury }),
		sym("@keyword.import")({ Include }),
		sym("@keyword.repeat")({ Repeat }),
		sym("@keyword.return")({ fg = mars, gui = "italic" }),
		sym("@keyword.exception")({ Exception }),
		sym("@keyword.conditional")({ Conditional }),
		sym("@keyword.directive")({ PreProc }),

		-- punctuation
		sym("@punctuation.delimiter")({ fg = muted }),
		sym("@punctuation.bracket")({ fg = text }),
		sym("@punctuation.special")({ fg = moon }),

		-- comments
		sym("@comment")({ Comment }),
		sym("@comment.documentation")({ fg = faint, gui = "italic" }),
		sym("@comment.error")({ fg = mars, gui = "bold" }),
		sym("@comment.warning")({ fg = venus, gui = "bold" }),
		sym("@comment.todo")({ fg = venus, gui = "bold" }),
		sym("@comment.note")({ fg = mercury, gui = "bold" }),

		-- markup (markdown, rst, etc.)
		sym("@markup.raw")({ fg = jupiter }),
		sym("@markup.raw.block")({ fg = jupiter }),
		sym("@markup.link")({ fg = mercury, gui = "underline" }),
		sym("@markup.link.url")({ fg = mercury, gui = "underline,italic" }),
		sym("@markup.link.label")({ fg = moon }),
		sym("@markup.list")({ fg = venus }),
		sym("@markup.heading")({ fg = saturn, gui = "bold" }),
		sym("@markup.heading.1")({ bg = saturn.darken(70).desaturate(70), fg = saturn, gui = "bold" }),
		sym("@markup.heading.2")({ bg = mercury.darken(70).desaturate(70), fg = mercury, gui = "bold" }),
		sym("@markup.heading.3")({ bg = mars.darken(70).desaturate(70), fg = mars, gui = "bold" }),
		sym("@markup.heading.4")({ bg = jupiter.darken(70).desaturate(70), fg = jupiter, gui = "bold" }),
		sym("@markup.heading.5")({ bg = venus.darken(70).desaturate(70), fg = venus, gui = "bold" }),
		sym("@markup.heading.6")({ bg = moon.darken(70).desaturate(70), fg = moon, gui = "bold" }),
		sym("@markup.strong")({ gui = "bold" }),
		sym("@markup.italic")({ gui = "italic" }),
		sym("@markup.strikethrough")({ gui = "strikethrough", fg = muted }),
		sym("@markup.quote")({ fg = faint, gui = "italic" }),

		-- misc TS
		sym("@operator")({ Operator }),
		sym("@attribute")({ fg = venus }),
		sym("@attribute.builtin")({ fg = venus, gui = "bold_italic" }),
		sym("@property")({ fg = moon, gui = "italic" }), -- would love to change this
		sym("@tag")({ fg = mercury }),
		sym("@tag.builtin")({ fg = mercury, gui = "bold_italic" }),
		sym("@tag.attribute")({ fg = venus }),
		sym("@tag.delimiter")({ fg = muted }),

		sym("@diff.plus")({ fg = saturn }),
		sym("@diff.minus")({ fg = mars }),
		sym("@diff.delta")({ fg = mercury }),

		-- LSP semantic tokens (0.9+)
		sym("@lsp.type.class")({ Type }),
		sym("@lsp.type.decorator")({ fg = venus }),
		sym("@lsp.type.enum")({ Type }),
		sym("@lsp.type.enumMember")({ Constant }),
		sym("@lsp.type.function")({ Function }),
		sym("@lsp.type.interface")({ Typedef }),
		sym("@lsp.type.macro")({ Macro }),
		sym("@lsp.type.method")({ Function }),
		sym("@lsp.type.namespace")({ fg = text, gui = "italic" }),
		sym("@lsp.type.parameter")({ fg = saturn, gui = "italic" }),
		sym("@lsp.type.property")({ fg = text }),
		sym("@lsp.type.struct")({ Structure }),
		sym("@lsp.type.type")({ Type }),
		sym("@lsp.type.typeParameter")({ Typedef }),
		sym("@lsp.type.variable")({ fg = text }),
		sym("@lsp.type.keyword")({ Keyword }),
		sym("@lsp.type.comment")({ Comment }),
		sym("@lsp.type.string")({ String }),
		sym("@lsp.type.number")({ Number }),
		sym("@lsp.type.operator")({ Operator }),

		sym("@lsp.mod.deprecated")({ gui = "strikethrough", fg = muted }),
		sym("@lsp.mod.readonly")({ gui = "italic" }),
		sym("@lsp.mod.defaultLibrary")({ gui = "italic" }),

		-- markdown
		markdownH1({ fg = moon, gui = "bold" }),
		markdownH2({ fg = mercury, gui = "bold" }),
		markdownH3({ fg = mars, gui = "bold" }),
		markdownH4({ fg = jupiter, gui = "bold" }),
		markdownH5({ fg = venus, gui = "bold" }),
		markdownH6({ fg = saturn, gui = "bold" }),
		markdownH1Delimiter({ markdownH1 }),
		markdownH2Delimiter({ markdownH2 }),
		markdownH3Delimiter({ markdownH3 }),
		markdownH4Delimiter({ markdownH4 }),
		markdownH5Delimiter({ markdownH5 }),
		markdownH6Delimiter({ markdownH6 }),

		-- plugins
		GitSignsAdd({ fg = moon }),
		GitSignsChange({ fg = mercury }),
		GitSignsDelete({ fg = mars }),

		RenderMarkdownH1Bg({ bg = moon.darken(70).desaturate(60), fg = moon, gui = "bold" }),
		RenderMarkdownH2Bg({ bg = mercury.darken(70).desaturate(60), fg = mercury, gui = "bold" }),
		RenderMarkdownH3Bg({ bg = mars.darken(70).desaturate(60), fg = mars, gui = "bold" }),
		RenderMarkdownH4Bg({ bg = jupiter.darken(70).desaturate(60), fg = jupiter, gui = "bold" }),
		RenderMarkdownH5Bg({ bg = venus.darken(70).desaturate(60), fg = venus, gui = "bold" }),
		RenderMarkdownH6Bg({ bg = saturn.darken(70).desaturate(60), fg = saturn, gui = "bold" }),

		MiniDiffSignAdd({ fg = moon, gui = "italic" }),
		MiniDiffSignChange({ fg = mercury, gui = "italic" }),
		MiniDiffSignDelete({ fg = mars, gui = "italic" }),
		MiniStatuslineModeNormal({ bg = high, fg = text, gui = "bold" }),
		MiniStatuslineModeInsert({ bg = text, fg = base, gui = "bold" }),
		MiniStatuslineModeVisual({ bg = moon, fg = base, gui = "bold" }),
		MiniStatuslineModeReplace({ bg = mars, fg = base, gui = "bold" }),
		MiniStatuslineModeCommand({ bg = mercury, fg = base, gui = "bold" }),
		MiniStatuslineModeOther({ bg = jupiter, fg = base, gui = "bold" }),
		MiniStatuslineDevinfo({ bg = overlay, fg = text }),
		MiniStatuslineFilename({ bg = surface, fg = faint }),
		MiniStatuslineFileinfo({ MiniStatuslineDevinfo }),
		MiniStatuslineInactive({ bg = base, fg = muted }),
		MiniTablineCurrent({ TabLineSel }),
		MiniTablineVisible({ fg = venus, bg = surface }),
		MiniTablineHidden({ TabLine }),

		TroubleIndent({ bg = surface, fg = faint }),
		TroublePos({ bg = surface, fg = faint }),
	}
end)

return theme

-- vi:nowrap
