return {
	"sontungexpt/url-open",
	event = "VeryLazy",
	cmd = "URLOpenUnderCursor",
	config = function()
		local status_ok, url_open = pcall(require, "url-open")
		if not status_ok then
			return
		end
		url_open.setup({
			open_app = "default",
			open_only_when_cursor_on_url = true,
			highlight_url = {
				all_urls = {
					enabled = true,
				},
			},
		})
		vim.keymap.set("n", "gX", "<esc>:URLOpenUnderCursor<cr>", { desc = "Open URL" })
	end,
}
