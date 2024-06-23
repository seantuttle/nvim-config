return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"vim",
				"lua",
				"vimdoc",
				"html",
				"css",
				"rust",
				"python",
				"typescript",
				"json",
				"yaml",
				"latex",
				"toml",
				"java",
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<leader>=",
					node_decremental = "<leader>-",
					node_incremental = "<leader>=",
					scope_incremental = "<leader>+",
				},
				module_path = "nvim-treesitter.incremental_selection",
			},
		},
	},
}
