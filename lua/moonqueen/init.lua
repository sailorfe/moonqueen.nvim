local BSSM = {}
BSSM.name = "moonqueen"
--- @class SeraConfig colorscheme options
local defaults = {
  transparent = false, -- set transparent bg hl
  overrides = false,
}
BSSM.opts = defaults
--- @param opts SeraConfig colorscheme opts
function BSSM.setup(opts)
  BSSM.opts = vim.tbl_deep_extend("force", {}, BSSM.opts or defaults, opts or {})
end
--- @param opts SeraConfig colorscheme opts
function BSSM.negativehollow(opts)
	if opts then BSSM.setup(opts) end
	-- vim.cmd("set t_Co=256")
	vim.cmd("hi clear")
	vim.o.termguicolors = true
	vim.g.colors_name = BSSM.name
	vim.o.background = "dark"
	vim.o.tgc = true

	local theme = require("moonqueen.theme")
	local highlights = theme.build()
	for group, attrs in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, attrs)
	end
end
return BSSM
