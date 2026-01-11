
	vim.opt.colorcolumn = "80"
	-- vim.cmd([[set autochdir]])
	-- vim.cmd([[set clipboard+=unnamedplus

	-- colors
	local colors = require("globals.colors")
	local red =  colors.cyan
	local grey = colors.grey
	local visual = colors.navy
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { fg =red, bg = "none" })
	vim.api.nvim_set_hl(0, "FloatBorder", { fg =red, bg = "none" })
	vim.api.nvim_set_hl(0, "FloatTitle", { fg = "#000000", bg = red})
	vim.api.nvim_set_hl(0, "Visual", { bg = visual})
	vim.api.nvim_set_hl(0, "StatusLine", { fg =red, bg = "none" })
	vim.api.nvim_set_hl(0, "colorcolumn", { bg = grey})



	vim.opt.swapfile = false
	vim.opt.backup = false
	vim.opt.wrap = false
	vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
	vim.opt.undofile = true
	vim.opt.ignorecase = true
	-- vim.opt.scrolloff = 8
	vim.bo.shiftwidth = 2
	vim.cmd([[ 
	set tabstop=2
	set formatoptions-=cro
	]])


vim.o.laststatus = 0
vim.o.ruler = false
vim.o.scrolloff = 10

