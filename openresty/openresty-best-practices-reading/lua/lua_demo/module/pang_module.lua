local _M = {}

local function get_name()
    return "Pang"
end

function _M.greeting()
    print("Hello from "..get_name())
end

return _M