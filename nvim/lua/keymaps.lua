-- leader key
vim.g.mapleader = " "

-- save, quit
vim.keymap.set("n", "<leader>w", ":w<cr>")
vim.keymap.set("n", "<leader>q", ":q<cr>")

-- buffers
vim.keymap.set("n", "<leader>n", ":bn<cr>")
vim.keymap.set("n", "<leader>p", ":bp<cr>")
vim.keymap.set("n", "<leader>x", ":bd<cr>")

-- yank to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
-- yank line to clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- windows
vim.keymap.set("n", "<leader><left>", ":vertical resize +20<cr>")
vim.keymap.set("n", "<leader><right>", ":vertical resize -20<cr>")
vim.keymap.set("n", "<leader><up>", ":resize +10<cr>")
vim.keymap.set("n", "<leader><down>", ":resize -10<cr>")


