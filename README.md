# moonqueen.nvim

a colorscheme for neovim inspired by naoko takeuchi's *sailor moon* artbooks with support for many mini.nvim modules, gitsigns, lsp, lualine, render-markdown, and trouble (so far!). built with [lush](https://github.com/rktjmp/lush.nvim/).

<div align="center">
<img src="assets/lazy.png" alt="palette">
</div>

- <a href="#palette">palette</a>
- <a href="#installation">installation</a>
- <a href="#extras">extras</a>
- <a href="#acknowledgments">acknowledgments</a>

this repository is mirrored to [github](https://github.com/sailorfe/moonqueen.nvim) from [codeberg](https://codeberg.org/sailorfe/moonqueen.nvim).

<a name="palette"></a>
## palette

| ansi                                  | bright                                |
| ------------------------------------- | ------------------------------------- |
| ![241a37](assets/00.png) `#241a37`    | ![433168](assets/08.png) `#433168`    |
| ![ef434c](assets/01.png) `#ef434c`    | ![fc737a](assets/09.png) `#fc737a`    |
| ![6ca522](assets/02.png) `#6ca522`    | ![b6ca68](assets/10.png) `#b6ca68`    |
| ![f7bb31](assets/03.png) `#f7bb31`    | ![ffd470](assets/11.png) `#ffd470`    |
| ![508ae2](assets/04.png) `#508ae2`    | ![7cacf4](assets/12.png) `#7cacf4`    |
| ![8877f8](assets/05.png) `#8877f8`    | ![b9affd](assets/13.png) `#b9affd`    |
| ![e874b9](assets/06.png) `#e874b9`    | ![f7a1d5](assets/14.png) `#f7a1d5`    |
| ![9181b1](assets/07.png) `#9181b1`    | ![ccb9f4](assets/15.png) `#ccb9f4`    |

<a name="installation"></a>
## installation

### lua

with lazy:

```lua
return {
    "sailorfe/moonqueen.nvim",
    opts = {
        -- transparent = false,
        -- overrides = false,
    },
    init function()
        vim.cmd.colorscheme("moonqueen")
    end,
}
```

### vimscript

the easiest method is probably just to run curl from your n/vim `colors` directory:

```sh
curl -LO https://codeberg.org/sailorfe/moonqueen.nvim/raw/branch/vim/colors/moonqueen.vim
```

then set colorscheme with one of the folowing:

- `init.lua`: `vim.cmd.colorscheme("moonqueen")`
- `.vimrc`: `set colorscheme "moonqueen"`
- the command  `:colorscheme moonqueen`

<a name="extras"></a>
## extras

**MAJOR OVERHAUL; EXTRAS IN PROGRESS**

<a name="acknowledgments"></a>
## acknowledgments

- [evangelion.nvim](https://github.com/xero/evangelion.nvim) for entire chunks of lua and weeb inspiration
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) for dir structure
