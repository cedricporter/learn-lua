#!/usr/bin/env lua

function fib()
    local a, b = 0, 1
    return function()
        a, b = b, a + b
        return a
    end
end        

for i in fib() do
    print(i)
    if i > 100000 then break end
end    


print("---------------")
