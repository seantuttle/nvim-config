return {
	{
		"sindrets/diffview.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "TimUntersberger/neogit", config = { disable_commit_confirmation = true } },
		},
		keys = {
			{ ",d", "<CMD>DiffviewOpen<CR>", mode = { "n", "v" } },
		},
		config = {
			keymaps = {
				view = {
					[",d"] = "<CMD>DiffviewClose<CR>",
					["c"] = "<CMD>DiffviewClose|Neogit commit<CR>",
				},
				file_panel = {
					[",d"] = "<CMD>DiffviewClose<CR>",
					["c"] = "<CMD>DiffviewClose|Neogit commit<CR>",
				},
			},
		},
	},
}
