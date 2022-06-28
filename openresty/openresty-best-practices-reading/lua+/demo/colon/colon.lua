local str = "abcd"
print("by ':'", str:sub(1, 2))
print("by '.'", str.sub(str, 1, 2))

obj = { x = 20 }

-- xx:func
-- xx.func(self)
function obj:func1()
    print(self.x)
end

function obj.func2(self)
    print(self.x)
end

obj:func1()
obj:func2()