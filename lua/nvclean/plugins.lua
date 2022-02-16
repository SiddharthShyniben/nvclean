local prequire = (require('nvclean.util').prequire)

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	print('Installing packer.nvim')
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

local packer = prequire('packer')

if not packer then 
	print('Error: packer not found')
	return
end

vim.cmd [[packadd packer.nvim]]

return packer.startup({
	function(use)
		-- packer managing itself
		use 'wbthomason/packer.nvim'
		
		-- faster modules
		use 'lewis6991/impatient.nvim'

		if packer_bootstrap then
			packer.sync()
		end
	end,
	config = {
		display = {
			open_fn = function()
				return prequire('packer.util').float({
					border = 'rounded', style = 'minimal'
				})
			end
		}
	}
})
