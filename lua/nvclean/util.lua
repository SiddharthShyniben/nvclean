function firstLine(str)
	for line in str:gmatch("([^\n]*)\n?") do
		return line
	end
end

function prequire(name)
	local status, lib = pcall(require, name)
	if (status) then return lib end

	-- Library failed to load, so perhaps return `nil` or something?
	print('Failed to load ' .. name .. ' because ' .. firstLine(lib))
	return nil
end

return {
	prequire = prequire
}
