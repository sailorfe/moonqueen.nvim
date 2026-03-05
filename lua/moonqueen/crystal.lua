local lush = require("lush")
local hsl = lush.hsl

local CRYSTAL = {}
---@return table
function CRYSTAL.get()
  return {
    ["base"] = hsl(260, 35, 12),
    ["surface"] = hsl(260, 35, 18),
    ["overlay"] = hsl(260, 35, 24),
    ["muted"] = hsl(260, 20, 35),
    ["faint"] = hsl(260, 25, 60),
    ["text"] = hsl(260, 50, 90),
    ["light"] = hsl(260, 100, 96),
    ["mars"] = hsl(360, 60, 60),
    ["jupiter"] = hsl(100, 60, 60),
    ["venus"] = hsl(40, 80, 60),
    ["mercury"] = hsl(200, 60, 60),
    ["saturn"] = hsl(250, 70, 70),
    ["moon"] = hsl(320, 60, 65),
    ["low"] = hsl(260, 32, 10),
    ["med"] = hsl(260, 30, 20),
    ["high"] = hsl(260, 28, 30),
    ["rei"] = hsl(360, 70, 80),
    ["makoto"] = hsl(100, 70, 80),
    ["minako"] = hsl(40, 90, 80),
    ["ami"] = hsl(200, 70, 80),
    ["hotaru"] = hsl(250, 80, 80),
    ["usagi"] = hsl(320, 70, 75),
  }
end

return CRYSTAL
