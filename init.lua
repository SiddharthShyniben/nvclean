require('impatient')

local configs = {
	'nvclean.options',
	'nvclean.plugins'
}

for _, name in ipairs(configs) do
	require(name)
end
