# moonqueen.nvim

> に代わってお仕置きよ!

a colorscheme for neovim inspired by naoko takeuchi's _sailor moon_ artbooks, sister to [luna.nvim](https://codeberg.org/sailorfe/luna.nvim). built with [lush](https://github.com/rktjmp/lush.nvim).

<div align="center">

![foot](json.png)

</div>

<!-- toc -->

- [palette](#palette)
- [features](#features)
- [installation](#installation)
    * [lua](#lua)
    * [vimscript](#vimscript)
- [contributing](#contributing)
    * [adding plugins](#adding-plugins)
    * [adding ports](#adding-ports)
- [acknowledgments](#acknowledgments)

<!-- tocstop -->

this repository is mirrored to [github](https://github.com/sailorfe/moonqueen.nvim) from [codeberg](https://codeberg.org/sailorfe/moonqueen.nvim).

## palette

|                                                                                                | key     | hex       |
| ---------------------------------------------------------------------------------------------- | ------- | --------- |
| ![base](https://img.shields.io/static/v1?label=&message=%20&color=1B1429&style=flat-square)    | base    | `#1B1429` |
| ![surface](https://img.shields.io/static/v1?label=&message=%20&color=291E3E&style=flat-square) | surface | `#291E3E` |
| ![overlay](https://img.shields.io/static/v1?label=&message=%20&color=362853&style=flat-square) | overlay | `#362853` |
| ![text](https://img.shields.io/static/v1?label=&message=%20&color=E1D9F2&style=flat-square)    | text    | `#E1D9F2` |
| ![light](https://img.shields.io/static/v1?label=&message=%20&color=F1EBFF&style=flat-square)   | light   | `#F1EBFF` |
| ![mars](https://img.shields.io/static/v1?label=&message=%20&color=D65C5C&style=flat-square)    | mars    | `#D65C5C` |
| ![jupiter](https://img.shields.io/static/v1?label=&message=%20&color=85D65C&style=flat-square) | jupiter | `#85D65C` |
| ![venus](https://img.shields.io/static/v1?label=&message=%20&color=EBB447&style=flat-square)   | venus   | `#EBB447` |
| ![mercury](https://img.shields.io/static/v1?label=&message=%20&color=5CADD6&style=flat-square) | mercury | `#5CADD6` |
| ![saturn](https://img.shields.io/static/v1?label=&message=%20&color=8F7DE8&style=flat-square)  | saturn  | `#8F7DE8` |
| ![moon](https://img.shields.io/static/v1?label=&message=%20&color=DB70B8&style=flat-square)    | moon    | `#DB70B8` |
| ![low](https://img.shields.io/static/v1?label=&message=%20&color=171122&style=flat-square)     | low     | `#171122` |
| ![med](https://img.shields.io/static/v1?label=&message=%20&color=2E2442&style=flat-square)     | med     | `#2E2442` |
| ![high](https://img.shields.io/static/v1?label=&message=%20&color=453762&style=flat-square)    | high    | `#453762` |

## features

- **supported neovim plugins**:
  - [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
  - [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
  - [mini.nvim](https://github.com/nvim-mini/mini.nvim) diff, statusline, and tabline
  - [render-markdown.nvim](https://github.com/MeanderingProgrammer)
  - [trouble.nvim](https://github.com/folke/trouble.nvim)
- **current ports** under `extras/`:
  - [alacritty](https://alacritty.org)
  - [foot](https://codeberg.org/dnkl/foot)
  - [rio](https://rioterm.com)
  - [termux](https://termux.dev)
  - `tty` for the console
  - [vim](https://www.vim.org)
  - [wezterm](https://wezterm.org)

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

alternately, you can skip `init = function()` and declare `vim.cmd.colorscheme('moonqueen')` somewhere in your `init.lua` after plugin load.

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

## contributing

```sh
git clone https://codeberg.org/sailorfe/moonqueen.nvim
cd moonqueen.nvim
```

make pull requests to [codeberg](https://codeberg.org/sailorfe/luna.nvim/pulls).

### adding plugins

**requires [lush](https://github.com/rktjmp/lush.nvim) and [shipwright](https://github.com/rktjmp/shipwright.nvim).**

1. `nvim lua/moonqueen/lush.lua`
2. `:Lushify`
3. append new highlight groups to the bottom of the table
4. `./build.sh lua`

> [!WARNING]
> make sure you _do not_ have moonqueen installed from this repository while developing. point neovim or your plugin manager to your local clone or else shipwright will get lost.

### adding ports

theme generation is helped by the `Makefile` at project root.

1. create `templates/$APP.*`:
   - for hex codes prefixed with hashes (`#DB70B8`), use `[[key]]`. examples: `alacritty.toml`, `wezterm.toml`.
   - for hex codes _without_ hashes (`DB70B8`), use `{{key}}`. examples: (`foot.ini`, `tty.conf`.
2. add the output path `$APP/moonqueen.*` to the `outputs` dictionary in `scripts/generator.py`.
3. (optional) ensure `palette.json` is up to date: `make palette`.
4. run the python script: `make generate`.

## acknowledgments

- [evangelion.nvim](https://github.com/xero/evangelion.nvim) for weeb `build.sh` inspiration
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) for repository structure
