vim.g.mapleader = " " -- Reset the leader key to space

-- These two allow using <leader>y (or Y) to yank (copy) to the system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
