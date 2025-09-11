{ lib, ... }:
{
	plugins.flash = {
		enable = true;

		settings = {
			search.multi_window = false;
		};
	};

	keymaps = [
		(lib.mkKeymap ["n" "x" "o"] "s" ''<cmd>lua require("flash").jump()<cr>'' "Flash")
	];
}
