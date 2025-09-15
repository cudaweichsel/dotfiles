{
	plugins.treesitter = {
		enable = true;
		settings = {
			auto_install = true;
			highlight.enable = true;
			indent.enable = true;
		};
	};

	plugins.treesitter-refactor = {
		enable = true;
		smartRename = {
			enable = true;
			keymaps = {
				smartRename = "grr"; # TODO:
			};
		};
		navigation = {
			enable = true;
			keymaps = { # TODO:
				gotoDefinition = "gnd";
				listDefinitions = "gnD";
				listDefinitionsToc = "g0";
				gotoNextUsage = "<a-*>";
				gotoPreviousUsage = "<a-#>";
			};
		};
	};
}
