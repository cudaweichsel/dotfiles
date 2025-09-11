{ lib, ... }:
{
	plugins.toggleterm.enable = true;
	keymaps = [
		#(lib.mkKeymap "n" "<leader>t|" "<cmd>ToggleTerm direction=vertical<cr>" "Toggle Vertical Terminal Window")
		#(lib.mkKeymap "n" "<leader>t-" "<cmd>ToggleTerm direction=horizontal<cr>" "Toggle Horizontal Terminal Window")
		(lib.mkKeymap "n" "<leader>t" "<cmd>ToggleTerm direction=float<cr>" "Open terminal")
		(lib.mkKeymap "t" "<esc>" ''<C-\><C-n>'' null)
		(lib.mkKeymap "t" "<C-q>" ''<C-\><C-n><cmd>q<cr>'' null)
	];
}
