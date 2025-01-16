local colorscheme = require("lua.lush_theme/moonqueen-base16")
local lushwright = require("shipwright.transform.lush")

run(colorscheme,
  lushwright.to_vimscript,
  {append, {"set background=dark", "let g:colors_name='moonqueen-base16'"}},
  {overwrite, "colors/moonqueen-base16.vim"})
