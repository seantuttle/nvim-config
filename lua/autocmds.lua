local cmd = vim.api.nvim_create_autocmd

-- cmd("LspAttach", {
--   group = vim.api.nvim_create_augroup("lsp", { clear = true }),
--   callback = function(args)
--     cmd("BufWritePre", {
--       buffer = args.buf,
--       callback = function()
--         vim.lsp.buf.format { async = false, id = args.data.client_id }
--       end,
--     })
--   end
-- })
