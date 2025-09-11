{ lib, ... }: 
{
	keymaps = [
		(lib.mkKeymap ["n" "v" "c" "t"] "<C-x>" "<Esc><cmd>qa<CR>" "Quit all")
		(lib.mkKeymap ["n" "v"] "<C-q>" "<Esc><cmd>q<CR>" "Quit")

		(lib.mkKeymap "n" "<Esc>" "<cmd>nohlsearch<CR>" "Remove search highlights")

		(lib.mkKeymap "n" "<C-s>" "<cmd>w<CR>" "Save")
		(lib.mkKeymap "i" "<C-s>" "<Esc><cmd>w<CR>a" "Save")

		(lib.mkKeymap "n" "x" ''"_x'' "Delete without copying")

		(lib.mkKeymap "n" "<C-h>" "<C-w><C-h>" "Move focus to the left window")
		(lib.mkKeymap "n" "<C-l>" "<C-w><C-l>" "Move focus to the right window")
		(lib.mkKeymap "n" "<C-j>" "<C-w><C-j>" "Move focus to the lower window")
		(lib.mkKeymap "n" "<C-k>" "<C-w><C-k>" "Move focus to the upper window")

		(lib.mkKeymap "n" "j" "gj" "Move cursor up ignoring wrap")
		(lib.mkKeymap "n" "k" "gk" "Move cursor down ignoring wrap")

		(lib.mkKeymap "v" "<" "<gv" "Indent left and reselect")
		(lib.mkKeymap "v" ">" ">gv" "Indent right and reselect")

		# Categories

		(lib.mkKeymap "n" "<leader>g" "" "Git")
		(lib.mkKeymap "n" "<leader>r" "" "Lsp")
	];
}
