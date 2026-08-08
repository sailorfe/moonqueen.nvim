#!/usr/bin/env bash
set -euo pipefail
shopt -s extglob
THEME=$(jq -r '.name' metadata.json)

echo "building $THEME lua..."
cat <<-'x0' >./shipwright_build.lua
  vim.cmd('packadd lush.nvim')
  vim.cmd('packadd shipwright.nvim')
	local shipwright = require("shipwright")
	local lushwright = require("shipwright.transform.lush")
	local overwrite = require("shipwright.transform.overwrite")
	local colorscheme = require("moonqueen.lush")
	shipwright.run(colorscheme, lushwright.to_lua, {overwrite, "lua/moonqueen/theme.lua.tmp"})
	x0
nvim --headless -u scripts/init.lua +Shipwright +qa
cat <<-x0 >"./lua/$THEME/theme.lua"
	S = {}
	---@return table
	S.build = function()
	  local theme = {
	x0
cat "./lua/$THEME/theme.lua.tmp" >>"./lua/$THEME/theme.lua"
cat <<-x0 >>"./lua/$THEME/theme.lua"
	  }
    local opts = require("moonqueen").opts
    if opts.transparent then
      theme["Normal"].bg = "NONE"
      theme["NormalNC"].bg = "NONE"
      theme["SignColumn"].bg = "NONE"
      theme["StatusLine"].bg = "NONE"
      theme["StatusLineNC"].bg = "NONE"
      theme["MiniStatuslineFilename"].bg = "NONE"
      theme["MiniStatuslineInactive"].bg = "NONE"
      theme["WinBarNC"].bg = "NONE"
    end
    if opts.overrides then
      theme = vim.tbl_deep_extend("force", theme, opts.overrides)
    end
    return theme
	end
	return S
	x0

rm "./lua/$THEME/theme.lua.tmp" ./shipwright_build.lua

echo "$THEME lua build complete"
