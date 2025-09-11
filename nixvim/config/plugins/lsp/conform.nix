{ lib, pkgs, ... }:
{
	plugins.conform-nvim = {
		enable = true;

		settings = {
			formatters_by_ft = {
				nix = [ "nixfmt" ];
			};

			formatters = {
				nixfmt.command = lib.getExe pkgs.nixfmt;
			};
		};
	};
}
