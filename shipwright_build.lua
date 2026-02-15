local lushwright = require("shipwright.transform.lush")
local overwrite = require("shipwright.transform.overwrite")
local append = require("shipwright.transform.append")

package.path = package.path .. ";./lua/?.lua"

local colorscheme = require("moonqueen.theme")

local function make_vim_compatible(lines)
  local cleaned = {}
  for _, line in ipairs(lines) do
    if not line:match("[@%.]") then
      local scrubbed = line:gsub("blend=[^%s]+", "")
      table.insert(cleaned, scrubbed)
    end
  end
  return cleaned
end


run(colorscheme,
	lushwright.to_vimscript,
  make_vim_compatible,
  {append, {
    "if has('termguicolors')",
    "  set termguicolors",
    "endif",
    "let g:colors_name=\"moonqueen\"",
    "set background=dark",
    "highlight! link htmlLink String",
    "highlight! link mkdLink String",
    "highlight! link mkdURL Identifier",
    "",
    "highlight SpellBad gui=undercurl guibg=NONE",
    "highlight Error guibg=NONE",
		"highlight! link Title Normal",
    "highlight mkdHeading guibg=NONE gui=bold",
	}},
  {overwrite, "colors/moonqueen.vim"}
)
