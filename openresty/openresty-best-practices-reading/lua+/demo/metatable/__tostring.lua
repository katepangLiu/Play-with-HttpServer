local set1 = {10, 20, 30}
local set2 = {20, 40, 50}

--table类型默认不支持数字运算, 即 __add 不可调用
--attempt to perform arithmetic on local 'set1' (a table value)
--local set3 = set1 + set2
--print(set3)

local union = function(self, another)
    local set = {}
    local result = {}

    for i, j in pairs(self) do 
        set[j] = true 
    end

    for i, j in pairs(another) do 
        set[j] = true 
    end

    for i, j in pairs(set) do 
        table.insert(result, i) 
    end

    return result
end

setmetatable(set1, {__add = union})
local set3 = set1 + set2

-- tab默认的 __tostring 是打印地址
print(set3)

local table_tostring = function(self)
    local result = '{'
    local sep = ''
    
    for _, i in pairs(self) do
        result = result ..sep .. i
        sep = ', '
    end
    
    result = result .. '}'
    return result
end

setmetatable(set3, {__tostring = table_tostring})
print(set3)