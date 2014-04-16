#!/usr/bin/env lua

function fib()
    local a, b = 0, 1
    return function()
        local c = b
        b = a + b
        a = c
        return a
    end
end        

for i in fib() do
    print(i)
    if i > 100000 then break end
end    


print("---------------")
