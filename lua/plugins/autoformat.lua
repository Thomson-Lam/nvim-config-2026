return {
	{ -- Autoformat
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		keys = {
			{
				"<leader>f",
				function()
					require("conform").format({ async = true, lsp_fallback = true })
				end,
				mode = "",
				desc = "[F]ormat buffer",
			},
		},
		opts = {
			notify_on_error = false,
			format_on_save = function(bufnr)
				-- Disable "format_on_save lsp_fallback" for languages that don't
				-- have a well standardized coding style. You can add additional
				-- languages here or re-enable it for the disabled ones.
				local disable_filetypes = { c = true, cpp = true }
				if disable_filetypes[vim.bo[bufnr].filetype] then
					return nil
				else
					return {
						timeout_ms = 5000,
						lsp_format = "fallback",
					}
				end
			end,
			formatters_by_ft = {
				lua = { "stylua" },
				-- Conform can also run multiple formatters sequentially
				python = { "isort", "black" },
				--

				rust = { "rustfmt" },

				--- Web dev
				--- NOTE: The css-beautify and html-beautify are installed together with js-beautify using npm.
				--- For current projects, you will use Tailwind, so no need for css-beautify.
				--- web dev projects - `npm install --save-dev js-beautify prettierd`.

				html = { "html_beautify", "rustywind" },

				markdown = { "prettier" },

				-- You can use 'stop_after_first' to run the first available formatter from the list
				javascript = { "prettierd", "prettier", stop_after_first = true },
				javascriptreact = { "prettierd", "html_beautify", "rustywind" },
				typescriptreact = { "prettierd", "html_beautify", "rustywind" },
			},
		},
	},
}
