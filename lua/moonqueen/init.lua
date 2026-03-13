local BSSM = {}
BSSM.name = "moonqueen"
--- @class SerenityConfig colorscheme options
local defaults = {
  transparent = false,
  overrides = false,
}
BSSM.opts = defaults
--- @param opts SerenityConfig colorscheme opts
function BSSM.setup(opts)
  BSSM.opts = vim.tbl_deep_extend("force", {}, BSSM.opts, opts or {})
end

--- @param opts SerenityConfig colorscheme opts
function BSSM.silvermillennium(opts)
  if opts and next(opts) then
    BSSM.setup(opts)
  end
  if vim.g.syntax_on then vim.cmd("syntax reset") end
  if vim.g.colors_name then vim.cmd("hi clear") end
  vim.o.termguicolors = true
  vim.g.colors_name = BSSM.name
  vim.o.background = "dark"

  local theme_load = require("moonqueen.theme")
  local highlights = theme_load.build()
  for group, attrs in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, attrs)
  end
  local palette = require("moonqueen.crystal").get()
  vim.g.terminal_color_0 = tostring(palette.base.hex)
  vim.g.terminal_color_8 = tostring(palette.overlay.hex)
  vim.g.terminal_color_1 = tostring(palette.mars.hex)
  vim.g.terminal_color_9 = tostring(palette.rei.hex)
  vim.g.terminal_color_2 = tostring(palette.jupiter.hex)
  vim.g.terminal_color_10 = tostring(palette.makoto.hex)
  vim.g.terminal_color_3 = tostring(palette.venus.hex)
  vim.g.terminal_color_11 = tostring(palette.minako.hex)
  vim.g.terminal_color_4 = tostring(palette.mercury.hex)
  vim.g.terminal_color_12 = tostring(palette.ami.hex)
  vim.g.terminal_color_5 = tostring(palette.saturn.hex)
  vim.g.terminal_color_13 = tostring(palette.hotaru.hex)
  vim.g.terminal_color_6 = tostring(palette.moon.hex)
  vim.g.terminal_color_14 = tostring(palette.usagi.hex)
end

return BSSM
