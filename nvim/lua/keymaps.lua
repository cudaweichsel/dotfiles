vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Remove search highlights" })

vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "Save" })
vim.keymap.set("i", "<C-s>", "<Esc><cmd>w<CR>a", { desc = "Save" })

vim.keymap.set({ "n", "i", "v" }, "<C-q>", "<Esc><cmd>qa<CR>", { desc = "Quit all" })

vim.keymap.set({ "n", "v" }, "x", '"_x', { desc = "Delete without copying" })

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("i", '"', '""<Left>', { desc = 'Autoclose "' })
vim.keymap.set("i", "'", "''<Left>", { desc = "Autoclose '" })
vim.keymap.set("i", "(", "()<Left>", { desc = "Autoclose (" })
vim.keymap.set("i", "[", "[]<Left>", { desc = "Autoclose [" })
vim.keymap.set("i", "{", "{}<Left>", { desc = "Autoclose {" })
vim.keymap.set("i", "{<CR>", "{<CR>}<ESC>O", { desc = "Autoclose {" })

vim.keymap.set("n", "j", "gj", { desc = "Move curser up ignoring wrap" })
vim.keymap.set("n", "k", "gk", { desc = "Move curser down ignoring wrap" })

vim.keymap.set("v", "<", "<gv", { desc = "Indent left and reselect" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right and reselect" })
