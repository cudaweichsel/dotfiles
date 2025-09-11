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
		{ nixvim, nixpkgs, flake-parts, ... }@inputs:
		flake-parts.lib.mkFlake { inherit inputs; } {
			systems = [ "x86_64-linux" ];

			perSystem = { system, ... }:
				let
					utils = import ./config/utils.nix {
						inherit (nixpkgs) lib;
					};
					nixvimLib = nixvim.lib.${system};
					nixvimBin = nixvim.legacyPackages.${system};
					customLib = nixpkgs.lib.extend (final: prev: {
						inherit (utils) listNixFiles;
						inherit (utils) mkKeymap;
					});
					customNixLib = customLib.extend inputs.nixvim.lib.overlay;
					nixvimModule = {
						inherit system;
						module = import ./config;
						extraSpecialArgs = {
							lib = customNixLib;
						};
					};
					nvim = nixvimBin.makeNixvimWithModule nixvimModule;
				in {
					checks = {
						default = nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;
					};
					packages = {
						default = nvim;
					};
				};
		};
}
