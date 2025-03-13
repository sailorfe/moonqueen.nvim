-- LUA shipwright_build.lua

-- local lushwright = require("shipwright.transform.lush")
-- run(require("lua.lush_theme.moonqueen"),
--  lushwright.to_lua,
--  {patchwrite, "lua/moonqueen/theme.lua", "-- PATCH_OPEN", "-- PATCH_CLOSE"})

-- VIM SCRIPT shipwright_build.lua

local colorscheme = require("lua.lush_theme.moonqueen")
local lushwright = require("shipwright.transform.lush")

run(colorscheme,
  lushwright.to_vimscript,
  {append, {"set background=dark", "let g:colors_name=\"moonqueen\""}},
  {overwrite, "colors/moonqueen.vim"})
