{
	config = {
		globals = {
			mapleader = " ";
			maplocalleader = " ";
			have_nerd_font = true;
			loaded_netrw = 1;
			loaded_netrwPlugin = 1;
		};
		opts = {
			# Appearence
			number = true;
			signcolumn = "yes";
			termguicolors = true;
			cursorline = true;
			wrap = false;
			scrolloff = 10;
			showmode = false;
			laststatus = 3; # One status bar for all splits

			# Search and Replace
			ignorecase = true;
			smartcase = true;
			inccommand = "split"; # Preview substitutions live, as you type!

			# Indentation
			smarttab = true;
			expandtab = false;
			autoindent = true;
			tabstop = 4;
			shiftwidth = 4;
			softtabstop = 4;

			# Behaviour
			mouse = "a";
			clipboard = "unnamedplus";
			confirm = true;
			undofile = true;
			swapfile = false;
			updatetime = 250; # Decrease update time
			timeoutlen = 300; # Decrease mapped sequence wait time
			breakindent = true; # Wrapped lines will have the same indent
			splitright = true;
			splitbelow = true;
		};
	};

}
