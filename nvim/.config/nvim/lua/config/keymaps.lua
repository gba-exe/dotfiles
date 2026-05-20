-- set <space> as leader
vim.g.maplocalleader = " "
vim.g.mapleader = " "

-- manual format
vim.keymap.set("n", "<leader>fm", function()
	require("conform").format({ lsp_fallback = true })
end, { desc = "Format Buffer" })
