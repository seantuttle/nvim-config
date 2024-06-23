return {
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"lua-language-server",
				"stylua",
				"html-lsp",
				"css-lsp",
				"prettier",
				"rust-analyzer",
				"pyright",
				"json-lsp",
				"digestif",
				"typescript-language-server",
				"taplo",
				"jdtls",
			},
		},
	},
}
