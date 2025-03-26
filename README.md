<div align="center">

# moonqueen.nvim

a colorscheme for neovim inspired by *bishoujo senshi sailor moon*. built with [lush](https://github.com/rktjmp/lush.nvim/).

<img src="assets/grim.png" alt="in the name of the moon">

</div>

- <a href="#palette">palette</a>
- <a href="#installation">installation</a>
- <a href="#extras">extras</a>

<a name="palette"></a>
## palette

| ansi      | bright    |
| --------- | ----------|
| `#241a37` | `#433168` |
| `#ef434c` | `#fc737a` |
| `#6ca522` | `#b6ca68` |
| `#ffc233` | `#ffdd8f` |
| `#508ae2` | `#7cacf4` |
| `#8d77f8` | `#bcaffd` |
| `#e873d1` | `#f7a1e6` |
| `#d0c3ea` | `#e0d6f5` |

<a name="installation"></a>
## installation

### pure lua

1. clone this repository somewhere on your system like `$HOME/src`: `git clone https://codeberg.org:spica/moonqueen.nvim.git`.
2. with lazy:

```lua
return {
	dir = "/absolute/path/to/moonqueen.nvim",
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

1. clone this repository somewhere on your system like `$HOME/src` and check out the vim branch:

```
git clone https://codeberg.org:spica/moonqueen.nvim.git
cd moonqueen.nvim
git checkout vim
```

2. copy `moonqueen.vim` to your vim or neovim `colors` directory:

```
cp colors/moonqueen.vim ~/.config/nvim/colors
# or maybe
cp colors/moonqueen.vim ~/.vim/colors
# or
cp colors/moonqueen.vim ~/.config/vim/colors
```

3. set colorscheme:

- `init.lua`: `vim.cmd.colorscheme("moonqueen")`
- `.vimrc`: `set colorscheme "moonqueen"`
- the command  `:colorscheme moonqueen`

<a name="extras"></a>
## extras

ports for the following can be found under [extras](https://codeberg.org/spica/moonqueen.nvim/src/branch/main/extras):

- alacritty
- foot
- iSH
- spotify_player
- termux
- tty
