return {
	-- Autocompletion
	{
		"saghen/blink.cmp",
		version = "*",
		opts = {
			keymap = {
				preset = "none",
				["<Tab>"] = {
					function(cmp)
						if cmp.is_visible() then
							return cmp.select_next()
						end
						return false
					end,
				},
				["<S-Tab>"] = {
					function(cmp)
						if cmp.is_visible() then
							return cmp.select_prev()
						end
						return false
					end,
				},
				["<CR>"] = {
					function(cmp)
						if cmp.is_visible() then
							return cmp.accept()
						end
						return false
					end,
				},
				["<C-e>"] = { function(cmp) return cmp.hide() end },
			},
			sources = {
				default = { "lsp", "path", "buffer" },
			},
			completion = {
				accept = {
					auto_brackets = { enabled = true },
				},
				documentation = { auto_show = true, auto_show_delay_ms = 300 },
			},
			signature = { enabled = true },
		},
	},

	-- LSP
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"williamboman/mason.nvim",
			"neovim/nvim-lspconfig",
			"saghen/blink.cmp",
		},
		config = function()
			require("mason").setup()
			local capabilities = require("blink.cmp").get_lsp_capabilities()
			require("mason-lspconfig").setup({
				ensure_installed = { "ts_ls", "svelte" },
				handlers = {
					function(server_name)
						require("lspconfig")[server_name].setup({ capabilities = capabilities })
					end,
				},
			})
		end,
	},

	-- Syntax Highlighting
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"lua",
					"vim",
					"vimdoc",
					"javascript",
					"typescript",
					"svelte",
					"html",
					"css",
					"json",
					"markdown",
				},
				auto_install = true,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},

	-- Formatting
	{
		"stevearc/conform.nvim",
		event = "BufWritePre",
		opts = {
			formatters_by_ft = {
				javascript = { "prettierd" },
				javascriptreact = { "prettierd" },
				typescript = { "prettierd" },
				typescriptreact = { "prettierd" },
				svelte = { "prettierd" },
				css = { "prettierd" },
				json = { "prettierd" },
				html = { "prettierd" },
				python = { "ruff" },
				lua = { "stylua" },
			},
			format_on_save = { timeout_ms = 500, lsp_fallback = true },
		},
	},
}
