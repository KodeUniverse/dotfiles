map("n", "<leader>t", ":Themery<CR>", { desc = "Open Themery" })

-- Fzf Binds
map("n", "<leader>z", ":Fzf files<CR>", { desc = "Open Fzf in file mode" })

-- LSP Keybinds
map("n", "<leader>lg", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "<leader>lr", vim.lsp.buf.references, { desc = "Find references" })
map("n", "<leader>ln", vim.lsp.buf.rename, { desc = "Rename symbol" })
map("n", "<leader>la", vim.lsp.buf.code_action, { desc = "Code action" })
map("n", "<leader>lh", vim.lsp.buf.hover, { desc = "Hover documentation" })
map("n", "<leader>lf", vim.lsp.buf.format, { desc = "Format buffer" })

-- Diagnostic Keybinds
map("n", "<leader>dd", vim.diagnostic.open_float, { desc = "Show diagnostic under cursor" })
map("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
map("n", "<leader>dq", vim.diagnostic.setloclist, { desc = "Diagnostics in location list" })
