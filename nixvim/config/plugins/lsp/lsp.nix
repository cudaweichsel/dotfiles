{ pkgs, ... }:
{
	plugins = {
		lsp = {
			enable = true;
			servers = {
				dockerls.enable = true;
				docker_compose_language_service.enable = true;
				yamlls.enable = true;
				pylsp.enable = true;
				nil_ls.enable = true;
				jsonls.enable = true;
			};
			keymaps.lspBuf = {
				# TODO: add lsp keymaps
			};
			inlayHints = true;

		};
	};

	diagnostic.settings = {
		virtual_text = true;
	};

	extraConfigLua = ''
		vim.lsp.enable("groovyls")
	'';

	extraPlugins = [
		(pkgs.vimUtils.buildVimPlugin {
			name = "groovyls";
			src = pkgs.fetchFromGitHub {
				owner = "GroovyLanguageServer";
				repo = "groovy-language-server";
				rev = "ef83177e76bc4ca768c54965dc5c512ddb2d9a38";
				hash = "sha256-UHwVraM56l5vQp8JbscfwNWj+v/hRCeuw5XVLkq6P8A=";
			};
		})
	];
}
