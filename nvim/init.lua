vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("autocmd")
require("keymaps")

vim.schedule(function()
	vim.o.clipboard = "unnamedplus"
end)

vim.g.have_nerd_font = true

vim.o.number = true

vim.o.mouse = "a"

vim.o.showmode = false

vim.o.signcolumn = "yes"

vim.o.breakindent = true

vim.o.undofile = true
vim.o.swapfile = false

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.smarttab = true
vim.o.expandtab = false
vim.o.autoindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4

vim.o.updatetime = 250 -- Decrease update time
vim.o.timeoutlen = 300 -- Decrease mapped sequence wait time

vim.o.splitright = true
vim.o.splitbelow = true

vim.o.inccommand = "split" -- Preview substitutions live, as you type!

vim.o.cursorline = true

vim.o.scrolloff = 10

vim.o.confirm = true

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

vim.o.laststatus = 3 -- One status bar for all splits

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		{ import = "plugins" },
	},
})
