#!/usr/bin/env lua

print("input x:")
line = io.read()
x = tonumber(line)
if x == nil then
    error(line .. " is not a number")
else
    print("x is " .. x)
end    
