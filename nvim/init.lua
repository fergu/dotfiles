require("fergu")		-- The "./lua/fergu" directory contains configuration specific to me. We load this first as things like mapleader need to be defined *before* lazy is loaded
require("lazy_init") 	-- Install (if needed) and load the Lazy package manager, with packages located in the "./lua/lazy_init/plugins" directory

-- One of the last things we want to do is set our colorscheme (which will only be availble after lazy starts, so we do it here
vim.cmd.colorscheme "catppuccin"
