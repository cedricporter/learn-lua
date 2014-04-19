-- Author: Hua Liang[Stupid ET] <et@everet.org>

mod_c = require '12_mod_c'


print('in mod_b')
print(mod_c.val)
mod_c.val = 'b'
print(mod_c.val)

