local env_vars = require"globals.env_vars"
if not vim.g.vscode then
	-- package.path = "/home/knuffelbeer/.luarocks/share/lua/5.1/?.lua;" .. package.path
	package.path = env_vars.package_path

  vim.g.python3_host_prog = env_vars.python_path
  -- vim.g.python3_host_prog = '/Users/beermeester/torch/torhc/bin/python'
	vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
	vim.keymap.set("n", "\\", ",", { noremap = true })
	--vim.g.maplocalleader = ","

	local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
	if not vim.loop.fs_stat(lazypath) then
		vim.fn.system({
			"git",
			"clone",
			"--filter=blob:none",
			"https://github.com/folke/lazy.nvim.git",
			"--branch=stable", -- latest stable release
			lazypath,
		})
	end
	vim.opt.rtp:prepend(lazypath)
	vim.wo.relativenumber = true
	vim.wo.number = true

	-- local red = "#870000"
	-- vim.cmd([[set autochdir]])
	-- vim.cmd([[set clipboard+=unnamedplus

	-- Voor AlgorithmOfEverything venv, verander voor andere environment
	require("lazy").setup("plugins")
	require("mappings")
	require("myAutocommands")
	require("settings")
end
