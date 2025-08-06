vim.lsp.enable({
	"docker_compose_language_service",
	"docker_language_server",
	"groovyls",
	"jsonls",
	"lua_ls",
	"nil_ls",
	"pylsp",
	"yamlls",
})

vim.diagnostic.config({
 	severity_sort = true,
	virtual_text = true,
	underline = { severity = vim.diagnostic.severity.ERROR },
})

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if client and client:supports_method(vim.lsp.protocol.Methods.textDocument_completion) then
			vim.opt.completeopt = { "menu", "menuone", "noinsert", "fuzzy", "popup", "preview" }
			vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
		end
	end,
})
