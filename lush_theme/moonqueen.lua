local bssm = require("moonqueen.crystal").get()
---@diagnostic disable: undefined-global
local lush = require("lush")
local theme = lush(function(injected_functions)
	local sym = injected_functions.sym
	return {
		-- ui
		Normal({ bg = bssm.base, fg = bssm.text }),
		NormalFloat({ bg = bssm.surface, fg = bssm.text }),
		NormalNC({ bg = bssm.base, fg = bssm.faint }),

		FloatBorder({ bg = bssm.surface, fg = bssm.muted }),
		FloatTitle({ bg = bssm.surface, fg = bssm.moon, gui = "bold" }),
		FloatFooter({ FloatBorder }),

		ColorColumn({ bg = bssm.surface }),
		Conceal({ fg = bssm.muted }),
		CursorLine({ bg = bssm.overlay }),
		CursorColumn({ bg = bssm.overlay }),
		CursorLineNr({ fg = bssm.text, gui = "bold" }),
		LineNr({ fg = bssm.muted }),
		LineNrAbove({ LineNr }),
		LineNrBelow({ LineNr }),

		SignColumn({ bg = bssm.base }),
		FoldColumn({ fg = bssm.high, bg = bssm.surface }),
		Folded({ bg = bssm.low, fg = bssm.faint }),

		StatusLine({ bg = bssm.overlay, fg = bssm.text }),
		StatusLineNC({ bg = bssm.surface, fg = bssm.muted }),
		WinBar({ bg = bssm.med, fg = bssm.faint }),
		WinBarNC({ bg = bssm.med, fg = bssm.muted }),
		WinSeparator({ fg = bssm.surface }), -- 0.9+
		VertSplit({ fg = bssm.surface }), -- for compatibility

		TabLine({ bg = bssm.surface, fg = bssm.muted }),
		TabLineFill({ bg = bssm.base }),
		TabLineSel({ bg = bssm.overlay, fg = bssm.moon, gui = "bold" }),

		Pmenu({ bg = bssm.surface, fg = bssm.text }),
		PmenuSel({ bg = bssm.overlay, fg = bssm.moon, gui = "bold" }),
		PmenuKind({ bg = bssm.surface, fg = bssm.saturn }),
		PmenuKindSel({ bg = bssm.overlay, fg = bssm.saturn, gui = "bold" }),
		PmenuExtra({ bg = bssm.surface, fg = bssm.muted }),
		PmenuExtraSel({ bg = bssm.overlay, fg = bssm.faint }),
		PmenuSbar({ bg = bssm.overlay }),
		PmenuThumb({ bg = bssm.high }),
		PmenuMatch({ fg = bssm.moon, gui = "bold" }), -- 0.11 fuzzy match
		PmenuMatchSel({ fg = bssm.moon, gui = "bold_underline" }),

		-- 0.11: popup/window title when using noice / native cmdline
		MsgArea({ fg = bssm.text }),
		MsgSeparator({ fg = bssm.overlay }),
		ModeMsg({ fg = bssm.text, gui = "bold" }),
		MoreMsg({ fg = bssm.jupiter }),
		Question({ fg = bssm.mercury }),
		WarningMsg({ fg = bssm.venus }),
		ErrorMsg({ fg = bssm.mars, gui = "bold" }),

		Cursor({ bg = bssm.text, fg = bssm.base }),
		lCursor({ Cursor }),
		CursorIM({ Cursor }),
		TermCursor({ bg = bssm.moon, fg = bssm.base }),
		TermCursorNC({ bg = bssm.faint, fg = bssm.base }),

		Visual({ bg = bssm.high }),
		VisualNOS({ Visual }),
		CurSearch({ bg = bssm.venus, fg = bssm.base }),
		IncSearch({ CurSearch }),
		Search({ bg = bssm.med, fg = bssm.venus }),
		Substitute({ bg = bssm.mercury, fg = bssm.base }),

		MatchParen({ bg = bssm.high, gui = "bold" }),

		NonText({ fg = bssm.muted }),
		Whitespace({ fg = bssm.overlay }),
		SpecialKey({ fg = bssm.muted }),
		EndOfBuffer({ fg = bssm.faint }),

		Directory({ fg = bssm.mercury }),
		Title({ fg = bssm.moon, gui = "bold" }),
		WildMenu({ bg = bssm.text, fg = bssm.base }),

		QuickFixLine({ bg = bssm.overlay, gui = "bold" }),

		-- diffs
		DiffAdd({ bg = bssm.jupiter, fg = bssm.base }),
		DiffChange({ bg = bssm.venus, fg = bssm.base }),
		DiffDelete({ fg = bssm.mars, gui = "bold" }),
		DiffText({ bg = bssm.mercury, fg = bssm.base }),

		-- spell
		SpellBad({ fg = bssm.mars, gui = "undercurl" }),
		SpellCap({ fg = bssm.venus, gui = "undercurl" }),
		SpellLocal({ fg = bssm.jupiter, gui = "undercurl" }),
		SpellRare({ fg = bssm.mercury, gui = "undercurl" }),

		-- misc
		Underlined({ gui = "underline" }),
		Ignore({ fg = bssm.muted }),
		Error({ bg = bssm.mars, fg = bssm.base }),
		Todo({ fg = bssm.venus, gui = "bold" }),

		-- traditional syntax
		Comment({ fg = bssm.faint, gui = "italic" }),

		Constant({ fg = bssm.venus }),
		String({ Constant }), -- maybe change
		Character({ Constant }),
		Number({ Constant }),
		Boolean({ Constant }),
		Float({ Constant }),

		Identifier({ fg = bssm.saturn }),
		Function({ fg = bssm.moon }),

		Statement({ fg = bssm.mercury, gui = "bold" }),
		Conditional({ Statement }),
		Repeat({ Statement }),
		Label({ Statement }),
		Operator({ fg = bssm.text }),
		Keyword({ Statement }), -- maybe change
		Exception({ Statement }),

		PreProc({ fg = bssm.mercury }),
		Include({ PreProc }),
		Define({ PreProc }),
		Macro({ PreProc }),
		PreCondit({ PreProc }),

		Type({ fg = bssm.jupiter }),
		StorageClass({ Type }),
		Structure({ Type }),
		Typedef({ fg = bssm.jupiter, gui = "italic" }),

		Special({ fg = bssm.saturn }),
		SpecialChar({ Special }),
		Tag({ Special }),
		Delimiter({ fg = bssm.text }),
		SpecialComment({ fg = bssm.faint, gui = "bold" }),
		Debug({ Special }),

		-- diagonistics
		DiagnosticError({ fg = bssm.mars }),
		DiagnosticWarn({ fg = bssm.venus }),
		DiagnosticInfo({ fg = bssm.mercury }),
		DiagnosticHint({ fg = bssm.moon }),
		DiagnosticOk({ fg = bssm.jupiter }),

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
		DiagnosticDeprecated({ gui = "strikethrough", fg = bssm.muted }),

		-- treesitter (0.9+)

		-- identifiers
		sym("@variable")({ fg = bssm.text, gui = "italic" }),
		sym("@variable.builtin")({ fg = bssm.moon, gui = "bold_italic" }),
		sym("@variable.parameter")({ Type }), -- (injected_functions)
		sym("@variable.member")({ fg = bssm.text }), -- struct fields, object keys

		sym("@constant")({ Constant }),
		sym("@constant.builtin")({ fg = bssm.venus, gui = "bold_italic" }),
		sym("@constant.macro")({ Define }),

		sym("@module")({ fg = bssm.venus }),
		sym("@module.builtin")({ fg = bssm.venus, gui = "bold_italic" }),
		sym("@label")({ fg = bssm.mercury }),

		-- literals
		sym("@string")({ String }),
		sym("@string.escape")({ fg = bssm.moon }),
		sym("@string.special")({ fg = bssm.moon }),
		sym("@string.regexp")({ fg = bssm.venus }),
		sym("@string.special.url")({ fg = bssm.mercury, gui = "underline" }),

		sym("@character")({ Character }),
		sym("@character.special")({ SpecialChar }),
		sym("@boolean")({ Boolean }),
		sym("@number")({ Number }),
		sym("@number.float")({ Float }),

		-- types
		sym("@type")({ Type }),
		sym("@type.builtin")({ fg = bssm.jupiter, gui = "bold_italic" }),
		sym("@type.definition")({ Typedef }),

		-- functions
		sym("@function")({ Function }),
		sym("@function.builtin")({ fg = bssm.saturn, gui = "bold_italic" }),
		sym("@function.macro")({ Macro }),
		sym("@function.method")({ Function }),
		sym("@constructor")({ fg = bssm.moon }),

		-- keywords
		sym("@keyword")({ Keyword }),
		sym("@keyword.function")({ fg = bssm.mercury, gui = "italic" }),
		sym("@keyword.operator")({ fg = bssm.mercury }),
		sym("@keyword.import")({ Include }),
		sym("@keyword.repeat")({ Repeat }),
		sym("@keyword.return")({ fg = bssm.mars, gui = "italic" }),
		sym("@keyword.exception")({ Exception }),
		sym("@keyword.conditional")({ Conditional }),
		sym("@keyword.directive")({ PreProc }),

		-- punctuation
		sym("@punctuation.delimiter")({ fg = bssm.muted }),
		sym("@punctuation.bracket")({ fg = bssm.text }),
		sym("@punctuation.special")({ fg = bssm.moon }),

		-- comments
		sym("@comment")({ Comment }),
		sym("@comment.documentation")({ fg = bssm.faint, gui = "italic" }),
		sym("@comment.error")({ fg = bssm.mars, gui = "bold" }),
		sym("@comment.warning")({ fg = bssm.venus, gui = "bold" }),
		sym("@comment.todo")({ fg = bssm.venus, gui = "bold" }),
		sym("@comment.note")({ fg = bssm.mercury, gui = "bold" }),

		-- markup (markdown, rst, etc.)
		sym("@markup.raw")({ fg = bssm.jupiter }),
		sym("@markup.raw.block")({ fg = bssm.jupiter }),
		sym("@markup.link")({ fg = bssm.mercury, gui = "underline" }),
		sym("@markup.link.url")({ fg = bssm.mercury, gui = "underline,italic" }),
		sym("@markup.link.label")({ fg = bssm.moon }),
		sym("@markup.list")({ fg = bssm.venus }),
		sym("@markup.heading")({ fg = bssm.moon, gui = "bold" }),
		sym("@markup.heading.1")({ bg = bssm.moon.darken(70).desaturate(70), fg = bssm.moon, gui = "bold" }),
		sym("@markup.heading.2")({ bg = bssm.mercury.darken(70).desaturate(70), fg = bssm.mercury, gui = "bold" }),
		sym("@markup.heading.3")({ bg = bssm.mars.darken(70).desaturate(70), fg = bssm.mars, gui = "bold" }),
		sym("@markup.heading.4")({ bg = bssm.jupiter.darken(70).desaturate(70), fg = bssm.jupiter, gui = "bold" }),
		sym("@markup.heading.5")({ bg = bssm.venus.darken(70).desaturate(70), fg = bssm.venus, gui = "bold" }),
		sym("@markup.heading.6")({ bg = bssm.saturn.darken(70).desaturate(70), fg = bssm.saturn, gui = "bold" }),
		sym("@markup.strong")({ gui = "bold" }),
		sym("@markup.italic")({ gui = "italic" }),
		sym("@markup.strikethrough")({ gui = "strikethrough", fg = bssm.muted }),
		sym("@markup.quote")({ fg = bssm.faint, gui = "italic" }),

		-- misc TS
		sym("@operator")({ Operator }),
		sym("@attribute")({ fg = bssm.venus }),
		sym("@attribute.builtin")({ fg = bssm.venus, gui = "bold_italic" }),
		sym("@property")({ fg = bssm.moon, gui = "italic" }), -- would love to change this
		sym("@tag")({ fg = bssm.mercury }),
		sym("@tag.builtin")({ fg = bssm.mercury, gui = "bold_italic" }),
		sym("@tag.attribute")({ fg = bssm.venus }),
		sym("@tag.delimiter")({ fg = bssm.muted }),

		sym("@diff.plus")({ fg = bssm.jupiter }),
		sym("@diff.minus")({ fg = bssm.mars }),
		sym("@diff.delta")({ fg = bssm.venus }),

		-- LSP semantic tokens (0.9+)
		sym("@lsp.type.class")({ Type }),
		sym("@lsp.type.decorator")({ fg = bssm.venus }),
		sym("@lsp.type.enum")({ Type }),
		sym("@lsp.type.enumMember")({ Constant }),
		sym("@lsp.type.function")({ Function }),
		sym("@lsp.type.interface")({ Typedef }),
		sym("@lsp.type.macro")({ Macro }),
		sym("@lsp.type.method")({ Function }),
		sym("@lsp.type.namespace")({ fg = bssm.text, gui = "italic" }),
		sym("@lsp.type.parameter")({ fg = bssm.saturn, gui = "italic" }),
		sym("@lsp.type.property")({ fg = bssm.text }),
		sym("@lsp.type.struct")({ Structure }),
		sym("@lsp.type.type")({ Type }),
		sym("@lsp.type.typeParameter")({ Typedef }),
		sym("@lsp.type.variable")({ fg = bssm.text }),
		sym("@lsp.type.keyword")({ Keyword }),
		sym("@lsp.type.comment")({ Comment }),
		sym("@lsp.type.string")({ String }),
		sym("@lsp.type.number")({ Number }),
		sym("@lsp.type.operator")({ Operator }),

		sym("@lsp.mod.deprecated")({ gui = "strikethrough", fg = bssm.muted }),
		sym("@lsp.mod.readonly")({ gui = "italic" }),
		sym("@lsp.mod.defaultLibrary")({ gui = "italic" }),

		-- markdown
		markdownH1({ fg = bssm.moon, gui = "bold" }),
		markdownH2({ fg = bssm.mercury, gui = "bold" }),
		markdownH3({ fg = bssm.mars, gui = "bold" }),
		markdownH4({ fg = bssm.jupiter, gui = "bold" }),
		markdownH5({ fg = bssm.venus, gui = "bold" }),
		markdownH6({ fg = bssm.saturn, gui = "bold" }),
		markdownH1Delimiter({ markdownH1 }),
		markdownH2Delimiter({ markdownH2 }),
		markdownH3Delimiter({ markdownH3 }),
		markdownH4Delimiter({ markdownH4 }),
		markdownH5Delimiter({ markdownH5 }),
		markdownH6Delimiter({ markdownH6 }),

		-- plugins
		GitSignsAdd({ sym("@diff.plus") }),
		GitSignsChange({ sym("@diff.delta") }),
		GitSignsDelete({ sym("@diff.minus") }),

		RenderMarkdownH1Bg({ sym("@markup.heading.1") }),
		RenderMarkdownH2Bg({ sym("@markup.heading.2") }),
		RenderMarkdownH3Bg({ sym("@markup.heading.3") }),
		RenderMarkdownH4Bg({ sym("@markup.heading.4") }),
		RenderMarkdownH5Bg({ sym("@markup.heading.5") }),
		RenderMarkdownH6Bg({ sym("@markup.heading.6") }),

		MiniDiffSignAdd({ sym("@diff.plus"), gui = "italic" }),
		MiniDiffSignChange({ sym("@diff.delta"), fg = bssm.venus, gui = "italic" }),
		MiniDiffSignDelete({ sym("@diff.minus"), gui = "italic" }),
		MiniStatuslineModeNormal({ bg = bssm.high, fg = bssm.text, gui = "bold" }),
		MiniStatuslineModeInsert({ bg = bssm.text, fg = bssm.base, gui = "bold" }),
		MiniStatuslineModeVisual({ bg = bssm.saturn, fg = bssm.base, gui = "bold" }),
		MiniStatuslineModeReplace({ bg = bssm.mars, fg = bssm.base, gui = "bold" }),
		MiniStatuslineModeCommand({ bg = bssm.moon, fg = bssm.base, gui = "bold" }),
		MiniStatuslineModeOther({ bg = bssm.jupiter, fg = bssm.base, gui = "bold" }),
		MiniStatuslineDevinfo({ bg = bssm.overlay, fg = bssm.text }),
		MiniStatuslineFilename({ bg = bssm.surface, fg = bssm.faint }),
		MiniStatuslineFileinfo({ MiniStatuslineDevinfo }),
		MiniStatuslineInactive({ bg = bssm.base, fg = bssm.muted }),
		MiniTablineCurrent({ TabLineSel }),
		MiniTablineVisible({ fg = bssm.venus, bg = bssm.surface }),
		MiniTablineHidden({ TabLine }),

		TroubleIndent({ bg = bssm.surface, fg = bssm.faint }),
		TroublePos({ bg = bssm.surface, fg = bssm.faint }),
	}
end)
---@diagnostic enable: undefined-global
return theme
