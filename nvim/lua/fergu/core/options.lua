vim.opt.termguicolors = true 									-- Use 24 bit color

vim.opt.number = true 											-- Display line numbers
vim.opt.relativenumber = false 									-- Display line numbers relative to the currently selected line
vim.opt.tabstop = 4 											-- A tab is 4 spaces
vim.opt.shiftwidth = 4 											-- Number of spaces to use for one indent level. Set to 0 to just use the tabstop value
vim.opt.expandtab = false 										-- Do not expand tabs as spaces

vim.opt.wrap = false 											-- Disable text wrapping on long lines

vim.opt.ignorecase = true 										-- Ignore case when searching
vim.opt.smartcase = true 										-- ... unless the search string includes upper and lower case

vim.opt.cursorline = true 										-- Highlight the current line

-- Set up swap files
vim.opt.swapfile = true 										-- Enable swap files
vim.opt.directory = vim.fn.stdpath("state") .. "/swap//" 		-- Store them in the state directory under "swap"

-- Keep default backup behavior
vim.opt.backup = false 											-- Disable backup files
vim.opt.backupdir = vim.fn.stdpath("state") .. "/backup//" 		-- ... If they were enabled, they'd go in the "backup" directory

-- Turn on the saving of a persistent undo file
vim.opt.undofile = true 										-- Keep a persistent undo file 
vim.opt.undodir = vim.fn.stdpath("state") .. "/undo//" 			-- And save it under "undo"

-- Set up the creation of views (This only happens when called manually)
vim.opt.viewdir = vim.fn.stdpath("state") .. "/views//"
vim.opt.viewoptions = "folds,cursor,curdir"

-- Restore cursor position when re-opening a file
vim.api.nvim_create_autocmd({ "BufReadPost" }, {
    pattern = { "*" }, 											-- Matches any file
    callback = function()
        vim.api.nvim_exec('silent! normal! g`"zv', false) 		-- Runs the vim command g`"zv, which returns to the last editing position
    end,
})
