local functor = {}

function caller(self, arg)
    print("call arg:", arg)
end

setmetatable(functor, {__call = caller})

functor("Pang")