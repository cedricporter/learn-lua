#!/usr/bin/env lua

co = coroutine.create(
    function ()
        for i = 1, 10 do
            print("co", i)
            coroutine.yield()
        end
end)

coroutine.resume(co)
coroutine.resume(co)
coroutine.resume(co)
coroutine.resume(co)

print("---------------")

function fib_gen1()
    local fib = coroutine.create(
        function ()
            local a, b = 0, 1
            while true do
                coroutine.yield(b)
                a, b = b, a + b
            end
    end)

    return function ()
        local code, res = coroutine.resume(fib)
        return res
    end
end


function fib_gen2()
    return coroutine.wrap(function()
            local a, b = 0, 1
            while true do
                coroutine.yield(b)
                a, b = b, a + b
            end
    end)
end

for i in fib_gen1() do
    if i > 10000 then break end
    print(i)
end    

for i in fib_gen2() do
    if i > 10000 then break end
    print(i)
end    
