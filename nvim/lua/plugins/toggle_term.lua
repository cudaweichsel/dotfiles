return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = true,
	keys = {
		{
			"<leader>t",
			mode = { "n", "x", "o" },
			"<cmd>ToggleTerm direction=float<cr>",
			desc = "Toggle Floating Terminal Window",
		},
		{
			"<esc>",
			mode = { "t" },
			"<C-\\><C-n>",
		},
	},
}
