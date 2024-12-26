# perona.nvim

a colorscheme for neovim inspired by *bishoujo senshi sailor moon*. built with [lush](https://github.com/rktjmp/lush.nvim/).

## palette

base = `#0c0916` `#251a42` `#3e2b6e`
accent = `#16122b` `#221c40` `#2d2556`
text = `#dbd6f0` `#a49cc4` `#726a90`
black = `#21163b` `#392b5a` `#1a0f33`
moon = `#fd8bd9` `#febeea` `#fd72d1`
mercury = `#4d8fe6` `#79abec` `#3681e2`
mars = `#f8303a` `#f96269` `#c90d16`
jupiter = `#6ca522` `#99d945` `#5e901d`
venus = `#fbe918` `#fdf27c` `#fcb54a`
saturn = `#8566f5` `#ab96f8` `#724ef4`
white = `#cfc5e7` `#e1dbf0` `#f3f1f9`

## installation

**Requires [lush.nvim](https://github.com/rktjmp/lush.nvim)**.

Clone this repository, then configure lush.lua like:

```lua
return {
    "rktjmp/lush.nvim",
    { dir = '/absolute/path/to/moon-queen.nvim', lazy = true },
}
```

## extras

Themes for the following terminals:

+ foot
+ WezTerm
+ Alacritty
+ Kitty
