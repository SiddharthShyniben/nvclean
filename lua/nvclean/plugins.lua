local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	print('Installing packer.nvim')
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

vim.cmd [[packadd packer.nvim]]

vim.cmd [[
	augroup packer_user_config
	  autocmd!
	  autocmd BufWritePost plugins.lua source <afile> | PackerSync
	augroup end
]]

return require('packer').startup({
	function(use)
		-- packer managing itself
		use 'wbthomason/packer.nvim'
		
		-- faster modules
		use 'lewis6991/impatient.nvim'
		
		-- colorscheme
		use {
			'folke/tokyonight.nvim',
			config = function()
				vim.g.tokyonight_style = "night"
				vim.cmd [[colorscheme tokyonight]]
			end
		}

		-- keymap utilities
		use 'svermeulen/vimpeccable'
		use {
				"folke/which-key.nvim",
				config = function()
						require("which-key").setup {
								plugins = {
										spelling = {enabled = true}
								},
								-- TODO: operators for comment
						}
				end
		}

		if packer_bootstrap then
			packer.sync()
		end
	end,
	config = {
		display = {
			open_fn = function()
				return require('packer.util').float({
					style = 'minimal'
				})
			end
		}
	}
})
