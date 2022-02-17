local firstLine = require('nvclean.util').firstLine

local function set(x)
	local ok, e = pcall(vim.cmd, 'set ' .. x)
	if ok then
		return true
	else
		print('Could not set ' .. x .. ' because ' .. firstLine(e))
		return false
	end
end

-- movement
set 'whichwrap=b,s,<,>'
set 'startofline'

-- search
set 'wrapscan'
set 'incsearch'
set 'magic' -- haha
set 'ignorecase'
set 'smartcase'

-- display
set 'scrolloff=99999'
set 'nowrap'
set 'cmdheight=3'
set 'fillchars=eob:'
set 'list'
set 'listchars=multispace:,lead:,trail:,precedes:ﲖ,extends:ﲕ,tab:\\ \\ \\ ,eol:¬'
set 'number'
set 'relativenumber'
set 'numberwidth=5'
set 'conceallevel=2'

-- syntax
set 'background=dark'
set 'hlsearch'
set 'termguicolors'
set 'cursorline'

-- windows
set 'laststatus=2'
set 'winminheight=0'
set 'winheight=10'
set 'winminwidth=0'
set 'winwidth=10'
set 'nohidden' -- :prayge:
set 'splitbelow'
set 'splitright'

-- tabs
set 'showtabline=1'

-- terminal
set 'title'
set 'titlestring=NvClean:\\ %' -- how isn't there a plugin for this? lolol
set 'titleold=I\\ use\\ NvClean\\ btw'

-- mouse
set 'mouse=a'

-- messages
set 'terse' -- vim newbies remove this
set 'showcmd'
set 'noshowmode'
set 'noconfirm' -- users familliar with other editors might like to change this
set 'belloff=all'

-- editing
set 'undofile'
set 'textwidth=80'
set 'formatoptions-=ro'
set 'formatoptions+=2nj'
set 'infercase'
set 'showmatch'

-- indent
set 'tabstop=4'
set 'smarttab'
set 'noexpandtab'
set 'smartindent'
-- TODO cino
-- set 'vartabstop=2,4' -- TODO
vim.cmd [[autocmd Filetype javascript,typescript set cindent]]

-- folding
set 'foldenable'
set 'foldlevelstart=3'
set 'foldminlines=2'
set 'foldmethod=syntax'

-- maps
-- set 'noremap' -- TODO: should i? it would break stuff

-- read/write
set 'nomodeline'
set 'writebackup'
set 'backup'
set 'autowriteall'
set 'autoread'

-- cmdline
set 'wildignorecase'

-- misc which dont fit other files
vim.cmd[[
	syntax match Entity "&amp;" conceal cchar=&
	syntax match todoCheckbox "\[\ \]" conceal cchar=
	syntax match todoCheckbox "\[x\]" conceal cchar=
]]
