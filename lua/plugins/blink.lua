vim.pack.add({
	{
		src = "https://github.com/rafamadriz/friendly-snippets",
		name = "friendly-snippets",
	},
	{
		src = "https://github.com/saghen/blink.cmp",
		name = "blink.cmp",
		version = vim.version.range("1.*"),
	},
})

-- blink config
local blink = require("blink.cmp")
-- blink.build():pwait()
blink.setup({
	completion = {
		documentation = {
			auto_show = true,
		},
	},
	keymap = {
		preset = "super-tab",
	},
	sources = {
		default = { "path", "snippets", "buffer", "lsp" },
	},
	cmdline = {
		enabled = true,
		sources = function()
				local cmd_type = vim.fn.getcmdtype()
				if cmd_type == "/" then
					return { "buffer" }
				end
				if cmd_type == ":" then
					return { "cmdline" }
				end
				return {}
			end,
		keymap = {
			preset = "super-tab",
		},
		completion = {
			menu = {
				auto_show = true,
			},
		},
	},
})
