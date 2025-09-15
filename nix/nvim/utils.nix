{ lib, ... }:
{
	listNixFiles = dir: lib.filter 
					(f: !lib.strings.hasSuffix "default.nix" f && lib.strings.hasSuffix ".nix" f)
					(lib.filesystem.listFilesRecursive dir);

	mkKeymap = mode: key: action: desc: {
		inherit mode key action;
		options = {
			inherit desc;
			# silent = true;
			# noremap = true;
			# remap = true;
		};
	};
}
