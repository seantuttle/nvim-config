require("nvchad.mappings")

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

-- easy bindings for clipboard use
map("v", "<leader>cc", '"+y', { desc = "Copy to clipboard" })
map({ "n", "v" }, "<leader>cp", '"+p', { desc = "Paste from clipboard" })
map("n", "<leader>rp", "ciw<C-r>0<ESC>", { desc = "Replace word by pasting previously yanked word" })

-- make quitting an editor with lots of windows a little easier
map("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit editor" })
map("n", "<leader>qf", "<cmd>qa!<cr>", { desc = "Force quit editor" })

-- better support for LSP diagnostics
map(
	"n",
	"<leader>do",
	"<cmd>lua vim.diagnostic.open_float()<CR>",
	{ noremap = true, silent = true, desc = "Open diagnostic in floating box" }
)
map(
	"n",
	"<leader>d[",
	"<cmd>lua vim.diagnostic.goto_prev()<CR>",
	{ noremap = true, silent = true, desc = "Go to previous diagnostic" }
)
map(
	"n",
	"<leader>d]",
	"<cmd>lua vim.diagnostic.goto_next()<CR>",
	{ noremap = true, silent = true, desc = "Go to next diagnostic" }
)
map(
	"n",
	"<leader>dd",
	"<cmd>Telescope diagnostics<CR>",
	{ noremap = true, silent = true, desc = "Search diagnostics with Telescope" }
)

-- spell check mappings
map({ "n", "v" }, "<leader>sc", "<cmd>set spell!<cr>", { desc = "Toggle spellcheck" })
