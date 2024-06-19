return {
	{
		"stevearc/conform.nvim",
		event = "BufWritePre",
		config = function()
			require("configs.conform")
		end,
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			require("nvchad.configs.lspconfig").defaults()
			require("configs.lspconfig")
		end,
	},

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
			},
		},
	},

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
