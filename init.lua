local prequire = require('nvclean.util').prequire

local configs = {
	'nvclean.options',
	'nvclean.plugins'
}

for _, name in ipairs(configs) do
	prequire(name)
end
