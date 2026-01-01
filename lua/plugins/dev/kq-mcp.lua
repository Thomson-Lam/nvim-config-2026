return {
	"kq-mcp", -- A placeholder name
	dir = "~/kqnv/kq-mcp", -- The absolute path to your plugin
	lazy = false, -- Load on startup for easier testing
	config = function(_, opts)
		require("kq-mcp").setup(opts)
	end,
}
