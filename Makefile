14_c: 14_c_api.c
	gcc -lm -llua -o 14_c 14_c_api.c

14_stack: 14_c_stack.c
	gcc -lm -llua -o 14_stack 14_c_stack.c
