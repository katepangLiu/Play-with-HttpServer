Object = setmetatable({}, {__metatable = "You cannot access here"})

print(getmetatable(Object))

-- cannot change a protected metatable
--setmetatable(Object, {})
