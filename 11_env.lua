#!/usr/bin/env lua

require "util"

tbl = {x=1, y=2, zz={a=3, b=4}}
g_name = "ET"

printo(_G)

printSplitLine()

-- printo(debug.getinfo(2, "S"))

printSplitLine()

_G["val"] = "I am value"

print(val)

printSplitLine()

function factory ()
    return function ()
        return a
    end
end

a = 0
f1 = factory()
f2 = factory()

print(f1())
print(f2())

setfenv(f1, {a=99})

print(f1())
print(f2())

setfenv(factory, {a=123})

f3 = factory()
print(f1())
print(f2())
print(f3())
