-- We need a few options to be sure we're using the Catppuccin theme
return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		require('lualine').setup {
			options = {
				theme = "catppuccin"
			},
			sections = {
				lualine_a = {"mode",},
				lualine_b = {"filename",},
				lualine_c = {"progress"},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {},
			}
		}
	end,
}
