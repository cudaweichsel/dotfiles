-- appearance
vim.o.number = true
vim.o.signcolumn = "yes"
vim.o.termguicolors = true
vim.o.cursorline = true
vim.o.wrap = false
vim.o.scrolloff = 10
vim.o.winborder = "rounded"

-- search
vim.o.ignorecase = true
vim.o.smartcase = true

-- indentation
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.smarttab = true
vim.o.autoindent = true

-- behaviour
vim.o.confirm = true
vim.o.swapfile = false

-- clipboard
vim.schedule(function()
	vim.o.clipboard = "unnamedplus"
end)
