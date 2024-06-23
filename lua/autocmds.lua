local cmd = vim.api.nvim_create_autocmd

cmd("BufWinEnter", {
	command = vim.cmd("silent! %foldopen!"),
})
