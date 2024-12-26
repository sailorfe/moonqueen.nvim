local bssm = require("moonqueen.senshi").get()
local moonqueen = {}

moonqueen.normal = {
	a = { bg = bssm.saturn, fg = bssm.text },
	b = { bg = bssm.hotaru, fg = bssm.base },
	c = { bg = bssm.guardian, fg = bssm.text },
	x = { bg = bssm.pretty, fg = bssm.uranus },
}
moonqueen.inactive = {
	c = { bg = bssm.meioh, fg = bssm.text },
}
moonqueen.insert = {
	a = { bg = bssm.moon, fg = bssm.base },
	b = { bg = bssm.usagi, fg = bssm.pluto },
}
moonqueen.visual = {
	a = { bg = bssm.venus, fg = bssm.base },
	b = { bg = bssm.minako, fg = bssm.pluto },
}
moonqueen.replace = {
	a = { bg = bssm.mars, fg = bssm.pluto },
	b = { bg = bssm.rei, fg = bssm.ghost },
}
moonqueen.terminal = {
	a = { bg = bssm.jupiter, fg = bssm.pluto },
	b = { bg = bssm.makoto, fg = bssm.base },
}
moonqueen.command = {
	a = { bg = bssm.mercury, fg = bssm.base },
	b = { bg = bssm.ami, fg = bssm.pluto },
}

return moonqueen

