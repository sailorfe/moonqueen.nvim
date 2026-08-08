local script_path = debug.getinfo(1).source:sub(2)
local root_dir = script_path:match("(.*)/scripts/.*") or "."
package.path = package.path .. ";" .. root_dir .. "/?.lua"

local colors = require("lua.moonqueen.crystal")
local palette = colors.get()

local function hex_to_rgb(hex)
	local h = hex:gsub("#", "")
	return tonumber(h:sub(1, 2), 16), tonumber(h:sub(3, 4), 16), tonumber(h:sub(5, 6), 16)
end

local function hex_to_rgb_raw(hex)
	local r, g, b = hex_to_rgb(hex)
	return string.format("%d, %d, %d", r, g, b)
end

local function nearest_256(hex)
	local r, g, b = hex_to_rgb(hex)
	local steps = { 0, 95, 135, 175, 215, 255 }

	local function nearest_step(v)
		local best, bestd = 0, 1000
		for i = 1, 6 do
			local d = math.abs(v - steps[i])
			if d < bestd then
				bestd, best = d, i - 1
			end
		end
		return best
	end

	local ri, gi, bi = nearest_step(r), nearest_step(g), nearest_step(b)
	local cube_idx = 16 + 36 * ri + 6 * gi + bi
	local cube_dist = (r - steps[ri + 1]) ^ 2 + (g - steps[gi + 1]) ^ 2 + (b - steps[bi + 1]) ^ 2

	local gray_idx = math.floor(((r + g + b) / 3.0 - 8) / 10.0 + 0.5)
	gray_idx = math.max(0, math.min(23, gray_idx))
	local gray_val = 8 + gray_idx * 10
	local gray_dist = (r - gray_val) ^ 2 + (g - gray_val) ^ 2 + (b - gray_val) ^ 2

	return tostring(cube_dist <= gray_dist and cube_idx or (232 + gray_idx))
end

local json_parts = {}

for name, color in pairs(palette) do
	local hex_str = tostring(color)

	table.insert(json_parts, string.format('  "%s": "%s"', name, hex_str))

	table.insert(json_parts, string.format('  "%s-rgb": "%s"', name, hex_to_rgb_raw(hex_str)))

	table.insert(json_parts, string.format('  "%s-hsl": "%d, %d, %d"', name, color.h, color.s, color.l))

	table.insert(json_parts, string.format('  "%s-cterm": "%s"', name, nearest_256(hex_str)))
end

local json_str = "{\n" .. table.concat(json_parts, ",\n") .. "\n}"

local output_path = root_dir .. "/palette.json"
local f = io.open(output_path, "w")
if f then
	f:write(json_str)
	f:close()
	print("palette.json updated: Hex, RGB, HSL, and cterm (nearest-256) are ready.")
end
