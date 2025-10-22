local BSSM = {}

function BSSM.load()
  vim.cmd('hi clear')
  if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
  end
  vim.o.termguicolors = true
  vim.g.colors_name = 'moonqueen'

  require('lush')(require('moonqueen.theme'))
end

return BSSM
