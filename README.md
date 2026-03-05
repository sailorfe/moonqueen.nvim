# moonqueen.nvim

> に代わってお仕置きよ!

a colorscheme for neovim inspired by naoko takeuchi's _sailor moon_ artbooks with support for many [mini](https://github.com/nvim-mini/mini.nvim) modules, [gitsigns](https://github.com/lewis6991/gitsigns.nvim), lsp, [render-markdown](https://github.com/MeanderingProgrammer/render-markdown.nvim), and [trouble](https://github.com/folke/trouble.nvim) (so far!). built with [lush](https://github.com/rktjmp/lush.nvim/).

_also see: [luna.nvim](https://codeberg.org/sailorfe/luna.nvim) 🐈‍⬛_

<div align="center">

![foot](json.png)

</div>

<!-- toc -->

- [palette](#palette)
- [installation](#installation)
    * [lua](#lua)
    * [vimscript](#vimscript)
- [extras](#extras)
- [contributing](#contributing)
- [acknowledgments](#acknowledgments)

<!-- tocstop -->

this repository is mirrored to [github](https://github.com/sailorfe/moonqueen.nvim) from [codeberg](https://codeberg.org/sailorfe/moonqueen.nvim).

## palette
| key       | hex           |
| --------- | ------------- |
| base      | `#1B1429`    |
| surface   | `#291E3E` |
| overlay   | `#362853` |
| text      | `#E1D9F2`    |
| light     | `#F1EBFF`   |
| mars    | `#D65C5C`  |
| jupiter    | `#85D65C`  |
| venus   | `#EBB447` |
| mercury   | `#5CADD6` |
| saturn    | `#8F7DE8`  |
| moon    | `#DB70B8`  |
| low       | `#171122`     |
| med       | `#2E2442`     |
| high      | `#453762`    |


## installation

### lua

with lazy:

```lua
return {
    "https://codeberg.org/sailorfe/moonqueen.nvim",
--    init = function()
--        vim.cmd.colorscheme("moonqueen")
--    end,
}
```

alternately, you can skip `init = function()` and declare `vim.cmd.colorscheme('luna')` somewhere in your `init.lua` after plugin load.

### vimscript

with vim-plug:

```vim
Plug 'https://codeberg.org/sailorfe/moonqueen.nvim', { 'as': 'moonqueen', 'branch': 'main' }
```

or you can place `colors/moonqueen.vim` anywhere in your runtimepath:

```sh
curl -LO https://codeberg.org/sailorfe/moonqueen.nvim/raw/branch/main/extras/vim/moonqueen.vim
```

then set colorscheme with `colorscheme moonqueen` either in your `vimrc` or temporarily with a command:

```vim
" .vimrc
set background=dark
syntax on 
colorscheme moonqueen
```

## extras

there is an `extras/` directory with ports for

- [alacritty](https://alacritty.org)
- [foot](https://codeberg.org/dnkl/foot)
- [termux](https://termux.dev)
- `tty` for the console
- [vim](https://www.vim.org)
- [wezterm](https://wezterm.org)

## contributing

theme generation takes the following steps:

- create `templates/$APP.*`:
    * for hex codes prefixed with hashes (`#DB70B8`), use `[[key]]` (examples: `alacritty.toml`, `wezterm.toml`).
    * for hex codes *without* hashes (`DB70B8`), use `{{key}}` (examples: (`foot.ini`, `tty.conf`).
- add the output path `$APP/moonqueen.*` to the `outputs` dictionary in `scripts/generator.py`.
- ensure `palette.json` is up to date: `nvim --headless -c "luafile scripts/hex.lua" -c "qa"`.
- run `python3 scripts/generator.py`.

make pull requests to [codeberg](https://codeberg.org/sailorfe/moonqueen.nvim/pulls).

## acknowledgments

- [evangelion.nvim](https://github.com/xero/evangelion.nvim) for weeb `build.sh` inspiration
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) for repository structure
