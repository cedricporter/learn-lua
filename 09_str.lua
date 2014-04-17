#!/usr/bin/env lua

data = [[
(a) (b)
(a) (c)
(c) (d)
]]

for line in data:gmatch("[^\r\n]+") do
    local nameFrom, nameTo = line:match("(%S+)%s+(%S+)")
    print(nameFrom, nameTo)
end    
