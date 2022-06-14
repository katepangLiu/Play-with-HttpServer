local function swap(a, b)
	return b, a
end

local a = 1
local b = 2
a, b = swap(a, b)
print("a=", a, "b=", b)

