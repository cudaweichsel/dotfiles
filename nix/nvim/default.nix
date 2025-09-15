{ system, nixpkgs, nixvim }:
let
	nixVimUtils = import ./utils.nix {
		inherit (nixpkgs) lib;
	};
	nixvimLib = nixvim.lib.${system};
	nixvimBin = nixvim.legacyPackages.${system};
	customLib = nixpkgs.lib.extend (final: prev: {
		inherit (nixVimUtils) listNixFiles;
		inherit (nixVimUtils) mkKeymap;
	});
	customNixLib = customLib.extend nixvim.lib.overlay;
	nixvimModule = {
		inherit system;
		module = import ./config;
		extraSpecialArgs = {
			lib = customNixLib;
		};
	};
	nvim = nixvimBin.makeNixvimWithModule nixvimModule;
in
	nvim
