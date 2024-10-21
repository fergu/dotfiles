return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	opts = {
		-- Add some group names for various plugins we're using
		-- This assumes that each plugin uses a unique first key for its keybinds
		-- and then the second (or etc) key is what picks a specific function
		-- This causes the cheatsheet to display the various plugin shortcuts available, 
		-- It then refines as we type more characters
		spec = {
			{ "<leader>f", group="Fuzzy Find" },
			{ "<leader>t", group="Nvim Tree" },
		},
	},
}
