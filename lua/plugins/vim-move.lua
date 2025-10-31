return {
	"matze/vim-move",
	config = function()
        vim.keymap.set("n", "<A-up>", "<Plug>MoveLineUp", { silent = true })
        vim.keymap.set("n", "<A-Down>", "<Plug>MoveLineDown", { silent = true })
        vim.keymap.set("v", "<A-up>", "<Plug>MoveBlockUp", { silent = true })
        vim.keymap.set("v", "<A-Down>", "<Plug>MoveBlockDown", { silent = true })
	end,
}
