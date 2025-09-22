{
	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		flake-parts.url = "github:hercules-ci/flake-parts";
		nixvim = {
			url = "github:nix-community/nixvim";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs =
		{ nixpkgs, nixvim, flake-parts, ... }@inputs:
		flake-parts.lib.mkFlake { inherit inputs; } {
			systems = [ "x86_64-linux" ];

			perSystem = { system, pkgs, ... }:
				let
					nvim = import ./nvim { inherit system nixpkgs nixvim; };
				in {
					checks = {
						# nvim = nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;
					};
					packages = {
						inherit nvim;
					};
					devShells = {
						default = pkgs.mkShell {
							packages = [
								nvim
								pkgs.fd
								pkgs.zoxide
								pkgs.tmux
								pkgs.fzf
								pkgs.lazygit
							];
						};
					};
					formatter = pkgs.nixpkgs-fmt;
				};
		};
}
