#!/usr/bin/env lua

local str = "Hello, Stupid ET"

print("#str: " .. #str)

a = {}
for i=1, 10 do
    a[#a + 1] = i
end

for i=0, 9 do
    print(i, a[i])
end    

b = {}
b[1] = 1
b[1000] = 10
print("#b", #b)
print("table.maxn", table.maxn(b))

 
