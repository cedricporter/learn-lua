#!/usr/bin/env lua

x = 0
x = x or 2

print(x)
print((1 and nil) or 3)
print("2 ^ 2 ^ 3", 2 ^ 2 ^ 3)
print("3 ^ 2 ^ 2", 3 ^ 2 ^ 2)


