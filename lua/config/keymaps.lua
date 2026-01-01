return {
	-- Clear highlights on search when pressing <Esc> in normal mode
	--  See `:help hlsearch`
	vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>"),

	-- Diagnostic keymaps
	vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" }),

	-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
	-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
	-- is not what someone will guess without a bit more experience.
	--
	-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
	-- or just use <C-\><C-n> to exit terminal mode
	vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" }),

	-- TIP: Disable arrow keys in normal mode
	-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
	-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
	-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
	-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

	-- Keybinds to make split navigation easier.

	-- NOTE: Splitting windows. For now, spearate all leader for Telescope and LSP instead and use <C> for
	-- a minor feature instead.
	-- TODO: Consider using the leader for splitting windows instead later.
	vim.keymap.set("n", "<C-s>", ":split<CR>", { desc = "Split Horizontally" }),
	vim.keymap.set("n", "<C-v>", ":vsplit<CR>", { desc = "Split Vertically" }),

	--  NOTE: Use CTRL+<hjkl> to switch between windows
	--  See `:help wincmd` for a list of all window commands
	vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" }),
	vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" }),
	vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" }),
	vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" }),

	-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
	-- vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
	-- vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
	-- vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
	-- vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })

	-- NOTE: Buffer keymaps

	--vim.keymap.set('n', '<S-l>', ':ls<CR>', { desc = 'List all buffers' }) -- used for Snipe instead.
	vim.keymap.set("n", "<S-e>", ":enew<CR>", { desc = "Open a new buffer" }),
	vim.keymap.set("n", "<S-w>", ":bd<CR>", { desc = "Close current buffer" }),
	vim.keymap.set("n", "<S-c>", ":bn<CR>", { desc = "Jump to next buffer" }),
	vim.keymap.set("n", "<S-p>", ":bp<CR>", { desc = "Jump to previous buffer" }),
	vim.keymap.set("n", "<leader>_", ":b#<CR>", { desc = "Jump to last focused buffer" }),
	vim.keymap.set("n", "<S-t>", ":term<CR>", { desc = "Open a new terminal buffer" }), -- open term

	-- TODO: Tab keymaps
	vim.keymap.set("n", "<C-b>", ":tabnew<CR>", { desc = "Open new buffer in a new tab" }), -- open file in a new buffer
}
