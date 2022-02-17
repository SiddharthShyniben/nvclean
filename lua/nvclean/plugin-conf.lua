--- all misc plugin confs

local tokyonight = {
	'folke/tokyonight.nvim',
	config = function()
		vim.g.tokyonight_style = "night"
		vim.g.tokyonight_italic_functions = true
		vim.cmd [[colorscheme tokyonight]]
	end
}

local whichkey = {
	'folke/which-key.nvim',
	config = function()
		require('which-key').setup {
			plugins = {
				spelling = {enabled = true}
			},
			-- TODO: operators for comment
		}
	end
}

local lualine = {
	'nvim-lualine/lualine.nvim',
	requires = {'kyazdani42/nvim-web-devicons', opt = true},
	config = function()
		require('lualine').setup {
			options = {
				theme = 'tokyonight'
			}
		}
	end
}


return {
	tokyonight = tokyonight,
	whichkey = whichkey,
	lualine = lualine
}
