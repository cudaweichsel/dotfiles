{
	plugins.blink-cmp = {
		enable = true;

		settings = {
			signature.enabled = true;
			fuzzy.implementation = "prefer_rust";
			completion. list.selection = {
				auto_insert = true;
				preselect = false;
			};
			keymap = {
				preset = "default";
				"<CR>" = [ "select_and_accept" "fallback" ];
				"<Tab>" = [ "accept" "fallback" ];
				"<C-space>" = [ "show" "show_documentation" "hide_documentation" ];
			};
			cmdline = {
				completion.menu.auto_show = true;
				keymap = {
					preset = "inherit";
					"<CR>" = [ "fallback" ];
				};
			};
		};
	};
}
