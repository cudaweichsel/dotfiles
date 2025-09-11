{ lib, ... }:
{
	plugins.nvim-tree.enable = true;

	keymaps = [
		(lib.mkKeymap "n" "<leader>e" "<cmd>NvimTreeToggle<cr>" "[E]xplorer")
	];
}
