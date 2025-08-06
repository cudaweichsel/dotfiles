require("nightly.globals")
require("nightly.opts")

vim.pack.add({
	{ src = "https://github.com/navarasu/onedark.nvim" },
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/folke/flash.nvim" },
	{ src = "https://github.com/Saghen/blink.cmp" },
})

require("nightly.keymaps")
require("nightly.autocmd")
require("nightly.lsp")

require("onedark").setup { style = "deep" }
-- require("blink.cmp").setup { keymap = { preset = "enter" } }
require("onedark").load()
require("mason").setup()
require("flash").setup()
