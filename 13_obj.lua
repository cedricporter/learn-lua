#!/usr/bin/env lua

require 'util'

Account = {balance = 0}

function Account:new (o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self

    return o
end

function Account:deposit (v)
    self.balance = self.balance + v
end

function Account:withdraw (v)
    if v > self.balance then error "no money" end
    self.balance = self.balance - v
end

a = Account:new()

print(a.balance)
a:deposit(100)
print(a.balance)
a:withdraw(50)
print(a.balance)
        
-- 
