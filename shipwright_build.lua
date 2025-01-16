local colorscheme = require("lua.lush_theme/moonqueen")
local lushwright = require("shipwright.transform.lush")

run(colorscheme,
  lushwright.to_vimscript,
  {append, {"set background=dark", "let g:colors_name='moonqueen'"}},
  {overwrite, "colors/moonqueen.vim"})
