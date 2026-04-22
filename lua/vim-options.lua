vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set nu")
vim.g.mapleader = " "

-- JetBrains-like
-- Duplicate line (Ctrl + D)
vim.keymap.set("n", "<C-d>", "yyp", { desc = "Duplicate line" })
vim.keymap.set("v", "<C-d>", "yP", { desc = "Duplicate selection" })

-- Comment (Ctrl + /)
-- Note: In many terminals, Ctrl + / sends <C-_>
vim.keymap.set("n", "<C-_>", "gcc", { remap = true })
vim.keymap.set("v", "<C-_>", "gc", { remap = true })
vim.keymap.set("i", "<C-_>", "<esc>gcci", { remap = true })

-- Save (Ctrl + S)
vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<cmd>w<cr>", { desc = "Save file" })
