#!/usr/bin/env lua

function tableToString(tbl)
    local l = {}
    for key in pairs(tbl) do
        l[#l + 1] = key .. ": " .. tbl[key] 
    end
    return "{" .. table.concat(l, ", ") .. "}"
end

Window = {}

Window.prototype = {x=0, y=0, width=100, height=100}
Window.mt = {}

function Window.new (o)
    setmetatable(o, Window.mt)
    return o
end

Window.mt.__index = Window.prototype

Window.mt.__tostring = tableToString

w = Window.new{x=10}
print(w)
print(w.width)
    
print("---------------")

function setDefault(tbl, defaultValue)
    local mt = {__index = function () return defaultValue end, __tostring = tableToString}
    setmetatable(tbl, mt)
end

tab = {x=10, y=20}
setDefault(tab, 99)
print(tab)
print(tab.z)
       
print("---------------")

Person = {hello=function () print("call hello") end}


local index = {}
local mt = {
    __index = function (tbl, k)
        print("* call " .. k)
        return tbl[index][k]
    end,
}

function track(t)
    local proxy = {}
    proxy[index] = t
    setmetatable(proxy, mt)
    return proxy
end

Person.hello()
Person = track(Person)
Person.hello()

