local function foo()
	print("in the function:")
	local x = 10
	local y = 20
	return x + y
end

local a = foo
print(a())


local function func( ... )
	local tmp = {...}
        local result = table.concat(tmp, " ")
	print(result)
end

func(1, 2, 3)
func(1, 2, 3, 4, 5)

function change(arg) --change函数，改变长方形的长和宽，使其各增长一倍
  arg.width = arg.width * 2  --表arg不是表rectangle的拷贝，他们是同一个表
  arg.height = arg.height * 2
end                  -- 没有return语句了

local rectangle = { width = 20, height = 15 }
print("before change:", "width = ", rectangle.width,
                        " height = ", rectangle.height)
change(rectangle)
print("after change:", "width = ", rectangle.width,
                       " height =", rectangle.height)
