local lushwright = require("shipwright.transform.lush")
run(require("lua.lush_theme.moonqueen"),
  lushwright.to_lua,
  {patchwrite, "lua/moonqueen/theme.lua", "-- PATCH_OPEN", "-- PATCH_CLOSE"})
