local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd

-- default map
local def_map = {
	-- MovceMent for colmak
	["n|u"] = map_cmd("k"):with_noremap(),
	["n|e"] = map_cmd("j"):with_noremap(),
	["n|n"] = map_cmd("h"):with_noremap(),
	["n|i"] = map_cmd("l"):with_noremap(),
	["n|k"] = map_cmd("i"):with_noremap(),
	["n|K"] = map_cmd("I"):with_noremap(),
	["n|h"] = map_cmd("e"):with_noremap(),
	["n|l"] = map_cmd("u"):with_noremap(),
	["n|j"] = map_cmd("n"):with_noremap(),
	["n|J"] = map_cmd("N"):with_noremap(),
	-- Vim map
	["n|<C-x>k"] = map_cr("bdelete"):with_noremap():with_silent(),
	["n|<C-s>"] = map_cu("write"):with_noremap(),
	["n|Y"] = map_cmd("y$"),
	["n|D"] = map_cmd("d$"),
--	["n|n"] = map_cmd("nzzzv"):with_noremap(),
--	["n|N"] = map_cmd("Nzzzv"):with_noremap(),
--	["n|J"] = map_cmd("mzJ`z"):with_noremap(),
	["n|<A-n>"] = map_cmd("<C-w>h"):with_noremap(),
	["n|<A-i>"] = map_cmd("<C-w>l"):with_noremap(),
	["n|<A-e>"] = map_cmd("<C-w>j"):with_noremap(),
	["n|<A-u>"] = map_cmd("<C-w>k"):with_noremap(),
	["n|<A-[>"] = map_cr("vertical resize -5"):with_silent(),
	["n|<A-]>"] = map_cr("vertical resize +5"):with_silent(),
	["n|<A-;>"] = map_cr("resize -2"):with_silent(),
	["n|<A-'>"] = map_cr("resize +2"):with_silent(),
	["n|<C-q>"] = map_cmd(":wq<CR>"),
	["n|<A-S-q>"] = map_cmd(":q!<CR>"),
	["n|<leader>o"] = map_cr("setlocal spell! spelllang=en_us"),
	-- Insert
	["i|<C-s>"] = map_cmd("<Esc>:w<CR>"),
	["i|<C-q>"] = map_cmd("<Esc>:wq<CR>"),
	-- command line
	["c|<C-b>"] = map_cmd("<Left>"):with_noremap(),
	["c|<C-f>"] = map_cmd("<Right>"):with_noremap(),
	["c|<C-a>"] = map_cmd("<Home>"):with_noremap(),
	["c|<C-e>"] = map_cmd("<End>"):with_noremap(),
	["c|<C-d>"] = map_cmd("<Del>"):with_noremap(),
	["c|<C-h>"] = map_cmd("<BS>"):with_noremap(),
	["c|<C-t>"] = map_cmd([[<C-R>=expand("%:p:h") . "/" <CR>]]):with_noremap(),
	["c|w!!"] = map_cmd("execute 'silent! write !sudo tee % >/dev/null' <bar> edit!"),
	-- Visual
	["v|J"] = map_cmd(":m '>+1<cr>gv=gv"),
	["v|K"] = map_cmd(":m '<-2<cr>gv=gv"),
	["v|<"] = map_cmd("<gv"),
	["v|>"] = map_cmd(">gv"),
}

bind.nvim_load_mapping(def_map)
