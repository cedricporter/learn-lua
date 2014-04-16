#!/usr/bin/env lua

function foo()
    print(1)
    do return end               -- > return
    print(2)
    print(3)
end


foo()

print("---------------")

function printx(x)
    for k in pairs(x) do print(k, x[k]) end
end

function printx2(...)
    print("calling printx:", ... )
    return printx(...)
end    

days = {"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"}
printx2(days)

print("---------------")

function printarg(...)
    print("select('#', ...)", select('#', ...))
    print("select(1, ...)", select(1, ...))
    print(unpack({...}))
end

printarg()
printarg(1)
printarg(1, 2)
printarg(1, 2, 3)
printarg(nil)

print("---------------")

mod = {}

function mod.printa()
    print('a')
end

do
    local old = mod.printa
    mod.printa = function ()
        print('hacked start')
        old()
        print('hacked end')
    end
end

mod.printa()

print("---------------")

-- g_count = 0
-- function stackoverflow()
--     print(g_count)
--     g_count = g_count + 1
--     stackoverflow()
--     return 
-- end

-- stackoverflow()


-- g_count = 0
-- function stacknotoverflow()
--     print(g_count)
--     g_count = g_count + 1
--     return stacknotoverflow()
-- end

-- stacknotoverflow()
