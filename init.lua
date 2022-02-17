require('impatient')

local configs = {
	'nvclean.options',
	'nvclean.plugins',
	'nvclean.mappings'
}

for _, name in ipairs(configs) do
	require(name)
end
