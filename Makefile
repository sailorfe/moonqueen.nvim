palette:
	nvim --headless -u scripts/init.lua -c "luafile scripts/palette.lua" -c "qa"

build:
	bash scripts/build.sh

generate:
	python3 scripts/generator.py
