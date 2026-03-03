-- init.lua
local BSSM = {}
BSSM.name = "luna"
function BSSM.silvermillennium()
	vim.cmd("hi clear")
	vim.o.termguicolors = true
	vim.g.colors_name = BSSM.name
	vim.o.background = "dark"

	local theme = require("moonqueen.theme")
	local highlights = theme.build()
	for group, attrs in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, attrs)
	end

	local palette = require("moonqueen.crystal").get()
	vim.g.terminal_color_0 = tostring(palette.base.hex)
	vim.g.terminal_color_8 = tostring(palette.overlay.hex)
	vim.g.terminal_color_1 = tostring(palette.mars.hex)
	vim.g.terminal_color_9 = tostring(palette.kasei.hex)
	vim.g.terminal_color_2 = tostring(palette.jupiter.hex)
	vim.g.terminal_color_10 = tostring(palette.mokusei.hex)
	vim.g.terminal_color_3 = tostring(palette.venus.hex)
	vim.g.terminal_color_11 = tostring(palette.kinsei.hex)
	vim.g.terminal_color_4 = tostring(palette.mercury.hex)
	vim.g.terminal_color_12 = tostring(palette.suisei.hex)
	vim.g.terminal_color_5 = tostring(palette.saturn.hex)
	vim.g.terminal_color_13 = tostring(palette.dosei.hex)
	vim.g.terminal_color_6 = tostring(palette.moon.hex)
	vim.g.terminal_color_14 = tostring(palette.tsuki.hex)
end
return BSSM
