local M = {}
-- vim.g.python3_host_prog = '/Users/beermeester/Library/Python/3.9/bin/python3'
-- vim.g.python3_host_prog = "/opt/homebrew/bin/python3"
M.python_path = vim.env.HOME .. "/.venvs/molten/bin/python3.12"
M.package_path = vim.env.HOME .. "/.luarocks/lib/luarocks/rocks-5.1/?.lua".. package.path
return M
