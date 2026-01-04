return {
	"kq-agents-chat", -- A placeholder name
	dir = "~/kq-agents-chat/", -- The absolute path to your plugin
	lazy = false, -- Load on startup for easier testing
	config = function(_, opts)
		require("kq-agents-chat").setup(opts)
	end,
}
