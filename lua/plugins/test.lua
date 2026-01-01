-- vim test
return {

	{ -- vim-test TODO: Check whether noremap and silent fields needed.
		"vim-test/vim-test",
		dependencies = {
			"preservim/vimux",
		},
		config = function()
			vim.keymap.set("n", "<leader>n", ":TestNearest<CR>")
			vim.keymap.set("n", "<leader>T", ":TestFile<CR>")
			vim.keymap.set("n", "<leader>a", ":TestSuite<CR>")
			vim.keymap.set("n", "<leader>l", ":TestLast<CR>")
			vim.keymap.set("n", "<leader>g", ":TestVisit<CR>")
			vim.cmd("let test#strategy = 'vimux'") -- TODO: Test vimux usgae
		end,
	},
}
