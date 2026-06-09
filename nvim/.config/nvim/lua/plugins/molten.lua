return {
	-- image rendering (plots will show inline)
	{
		"3rd/image.nvim",
		lazy = true,
		opts = {
			backend = "kitty",
			integrations = {},
			max_width_window_percentage = 60,
			max_height_window_percentage = 30,
			hijack_file_patterns = {},
		},
	},

	-- jupyter kernel runner
	{
		"benlubas/molten-nvim",
		version = "^1.0.0",
		build = ":UpdateRemotePlugins",
		dependencies = { "3rd/image.nvim" },
		init = function()
			-- show images via image.nvim
			vim.g.molten_image_provider = "image.nvim"
			-- auto-open output window when there's output
			vim.g.molten_auto_open_output = true
			-- wrap long output
			vim.g.molten_wrap_output = true
			-- show output inline (below the cell)
			vim.g.molten_virt_text_output = true
			vim.g.molten_virt_lines_off_by_1 = true
		end,
		keys = {
			{
				"<leader>mi",
				":MoltenInit<CR>",
				desc = "Molten: init kernel",
				silent = true,
			},
			{
				"<leader>mr",
				":MoltenEvaluateLine<CR>",
				desc = "Molten: run line",
				silent = true,
			},
			{
				"<leader>mr",
				":<C-u>MoltenEvaluateVisual<CR>",
				desc = "Molten: run selection",
				silent = true,
				mode = "v",
			},
			{
				"<leader>mc",
				":MoltenReevaluateCell<CR>",
				desc = "Molten: re-run cell",
				silent = true,
			},
			{
				"<leader>md",
				":MoltenDelete<CR>",
				desc = "Molten: delete cell",
				silent = true,
			},
			{
				"<leader>mo",
				":MoltenShowOutput<CR>",
				desc = "Molten: show output",
				silent = true,
			},
			{
				"<leader>mh",
				":MoltenHideOutput<CR>",
				desc = "Molten: hide output",
				silent = true,
			},
			{
				"<leader>mx",
				":MoltenInterrupt<CR>",
				desc = "Molten: interrupt kernel",
				silent = true,
			},
		},
	},

	-- edit .ipynb files as clean python, sync back on save
	{
		"GCBallesteros/jupytext.nvim",
		lazy = false,
		opts = {
			style = "hydrogen", -- uses # %% as cell markers
			output_extension = "auto",
			force_ft = "python",
		},
	},
}
