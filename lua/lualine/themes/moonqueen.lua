local bssm = require("moonqueen.senshi").get()
local moonqueen = {}

moonqueen.normal = {
	a = { bg = bssm.guardian, fg = bssm.text },
	b = { bg = bssm.moonlight, fg = bssm.text },
	c = { bg = bssm.sailor, fg = bssm.text },
	x = { bg = bssm.sailor, fg = bssm.text },
}
moonqueen.inactive = {
	c = { bg = bssm.pretty, fg = bssm.text },
}
moonqueen.insert = {
	a = { bg = bssm.base, fg = bssm.text },
	b = { bg = bssm.guardian, fg = bssm.text },
}
moonqueen.visual = {
	a = { bg = bssm.text, fg = bssm.base },
	b = { bg = bssm.diana, fg = bssm.base },
}
moonqueen.replace = {
	a = { bg = bssm.base, fg = bssm.mars },
	b = { bg = bssm.pretty, fg = bssm.rei },
}
moonqueen.terminal = {
	a = { bg = bssm.jupiter, fg = bssm.base },
	b = { bg = bssm.makoto, fg = bssm.base },
}
moonqueen.command = {
	a = { bg = bssm.moon, fg = bssm.base },
	b = { bg = bssm.usagi, fg = bssm.base },
}

return moonqueen
