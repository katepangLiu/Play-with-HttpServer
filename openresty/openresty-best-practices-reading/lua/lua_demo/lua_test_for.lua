for i = 1, 5 do
	print(i)
end

for i = 1, 10, 2 do
	print(i)
end

local days = {
   "Monday", "Tuesday", "Wednesday", "Thursday",
   "Friday", "Saturday","Sunday"
}

local revDays = {}

for i, day in pairs(days) do
	revDays[day] = i
end

for k, v in pairs(revDays) do
	print("k:", k, " v:", v)
end

local a = {'a', 'b', 'c', 'd', 'e'}
for i, v in ipairs(a) do
	print('i:', i, "v:", v)
end
