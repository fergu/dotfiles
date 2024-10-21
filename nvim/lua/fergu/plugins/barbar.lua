return {
	'romgrk/barbar.nvim',
	dependencies = {
		'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
	},
	config = function()
		require('barbar').setup()
	end,
}
