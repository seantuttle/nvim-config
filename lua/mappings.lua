require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("v", "<leader>cc", '"+y', { desc = "Copy to clipboard" })
map({ "n", "v" }, "<leader>cp", '"+p', { desc = "Paste from clipboard" })
map("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit editor" })
map("n", "<leader>qf", "<cmd>qa!<cr>", { desc = "Force quit editor" })
