return {
	"nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim",
    },
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
                null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				require("none-ls.diagnostics.eslint_d"),
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
		vim.keymap.set("n", "<C-M-l>", vim.lsp.buf.format, {}) -- JetBrains: Reformat code (Ctrl+Alt+L)
		vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})
	end,
}
