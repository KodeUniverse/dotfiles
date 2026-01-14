return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		require("themery").setup({
			themes = {
				{
					name = "neopywal-dark",
					colorscheme = "neopywal-dark",
				},
				{
					name = "neopywal-light",
					colorscheme = "neopywal-light",
				},
				{
					name = "kanagawa-dragon",
					colorscheme = "kanagawa-dragon",
				},
				{
					name = "kanagawa-wave",
					colorscheme = "kanagawa-wave",
				},
				{
					name = "kanagawa-lotus",
					colorscheme = "kanagawa-lotus",
				},
			},
		})
	end,
}
