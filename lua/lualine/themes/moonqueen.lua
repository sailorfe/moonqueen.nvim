local bssm = require("moonqueen.senshi").get()
local moonqueen = {}

moonqueen.normal = {
	a = { bg = bssm.guardian, fg = bssm.text, gui = "bold" },
	b = { bg = bssm.densetsu, fg = bssm.text },
	c = { bg = bssm.sailor, fg = bssm.text, gui = "italic" },
	x = { bg = bssm.sailor, fg = bssm.text },
}
moonqueen.inactive = {
	c = { bg = bssm.pretty, fg = bssm.text },
}
moonqueen.insert = {
	a = { bg = bssm.base, fg = bssm.text, gui = "bold" },
	b = { bg = bssm.guardian, fg = bssm.text },
}
moonqueen.visual = {
	a = { bg = bssm.text, fg = bssm.base, gui = "bold" },
	b = { bg = bssm.diana, fg = bssm.base },
}
moonqueen.replace = {
	a = { bg = bssm.hino, fg = bssm.text, gui = "bold" },
	b = { bg = bssm.rei, fg = bssm.base },
}
moonqueen.terminal = {
	a = { bg = bssm.jupiter, fg = bssm.base, gui = "bold" },
	b = { bg = bssm.makoto, fg = bssm.base },
}
moonqueen.command = {
	a = { bg = bssm.moon, fg = bssm.base, gui = "bold" },
	b = { bg = bssm.usagi, fg = bssm.base },
}

return moonqueen
