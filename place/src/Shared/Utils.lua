local Utils = {}

function Utils.fuzzyEq(a: number, b: number, epsilon: number): boolean
	return math.abs(a - b) < epsilon
end

function Utils.flatten(assets: { any }, flattened: { [number]: any }?): { [number]: any }
	local result = flattened or {}

	for _, v in pairs(assets) do
		if type(v) == "table" then
			Utils.flatten(v, result)
		else
			table.insert(result, v)
		end
	end

	return result
end

return Utils
