local t = {1, 2, 3, 4, 5}
local i = 0
local sum = 0

for i,v in pairs(t) do
	sum = sum + v	
end

print(sum)
