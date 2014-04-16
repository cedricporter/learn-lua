#!/usr/bin/env lua

y = {x='x', y='y'}
print(y[1])
print(y['x'])
print(y.x)

print("-----------")

data = {1,2,3,4,5}

list = nil
for i = 0, #data do
    list = {next=list, value=data[i]}
end

local l = list
while l do
    print(l.value)
    l = l.next
end    

print("-----------")

function printi(x)
    for i, v in ipairs(x) do
        print(i, v)
    end
end

function printx(x)
    for k in pairs(x) do print(k, x[k]) end
end    

days = {[0] = "Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"}
print(#days)
print("-----------")
printx(days)
print("-----------")

days = {"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"}
print(#days)
print("-----------")
printx(days)
print("-----------")


print(unpack(days))

