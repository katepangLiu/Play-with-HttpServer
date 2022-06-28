local ffi = require "ffi"
local myffi = ffi.load('myffi')

ffi.cdef[[
int add(int x, int y);   /* don't forget to declare */
]]

local res = myffi.add(1, 2)
print(res)
