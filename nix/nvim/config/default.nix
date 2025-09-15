{ mkKeymap, ... }: 
{
	_module.args = {
		inherit mkKeymap;
	};
	imports = [
		./settings.nix
		./keymaps.nix
		./auto_cmds.nix
		./theme.nix
		./plugins
	];
}
