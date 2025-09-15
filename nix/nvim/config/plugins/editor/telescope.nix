{
	plugins.telescope = {
		enable = true;
		extensions = {
			file-browser = {
				enable = true;
			};
			fzf-native = {
				enable = true;
			};
		};
		settings = {
			defaults = {
				layout_config = {
					horizontal = {
						prompt_position = "top";
					};
				};
				sorting_strategy = "ascending";
			};
		};
		keymaps = {
			"<leader><space>" = {
				action = "find_files";
				options.desc = "Find project files";
			};
			"<leader>/" = {
				action = "current_buffer_fuzzy_find";
				options.desc = "Grep";
			};
			"<leader>:" = {
				action = "command_history";
				options.desc = "Command History";
			};
			"<leader>b" = {
				action = "buffers";
				options.desc = "Buffers";
			};
			"<leader>gf" = {
				action = "git_files";
				options.desc = "Files";
			};
			"<leader>gc" = {
				action = "git_commits";
				options.desc = "Commits";
			};
			"<leader>gs" = {
				action = "git_status";
				options.desc = "Status";
			};
		};
	};
}
