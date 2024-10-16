require("lazy_init") 	-- Install (if needed) and load the Lazy package manager, with packages located in the "./lua/lazy_init/plugins" directory
require("fergu")		-- The "./lua/fergu" directory contains configuration specific to me

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true
vim.cmd.colorscheme "catppuccin"

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

-- Set up swap files
vim.opt.swapfile = true
vim.opt.directory = vim.fn.stdpath("state") .. "/swap//"
-- Keep default backup behavior
vim.opt.backup = false
vim.opt.backupdir = vim.fn.stdpath("state") .. "/backup//"
-- Turn on the saving of a persistent undo file
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("state") .. "/undo//"
-- Set up the creation of views (This only happens when called manually)
vim.opt.viewdir = vim.fn.stdpath("state") .. "/views//"
vim.opt.viewoptions = "folds,cursor,curdir"
-- Restore cursor position when re-opening a file
vim.api.nvim_create_autocmd({ "BufReadPost" }, {
    pattern = { "*" }, -- Matches any file
    callback = function()
        vim.api.nvim_exec('silent! normal! g`"zv', false) -- Runs the vim command g`"zv, which returns to the last editing position
    end,
})
