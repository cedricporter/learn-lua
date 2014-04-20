/**
 * @file   14_c_stack.c
 * 
 * @brief  
 * 
 * 
 */


#include <stdio.h>
#include <string.h>

#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"

static void stackDump(lua_State *L)
{
    int i;
    int top = lua_gettop(L);
    for (i = 0; i <= top; i++)
    {
        int t = lua_type(L, i);
        switch (t)
        {
        case LUA_TSTRING:
            printf("'%s'", lua_tostring(L, i));
            break;
        case LUA_TBOOLEAN:
            printf(lua_toboolean(L, i) ? "true" : "false");
            break;
        case LUA_TNUMBER:
            printf("%g", lua_tonumber(L, i));
            break;
        default:
            printf("%s", lua_typename(L, t));
            break;
        }
        printf("  ");
    }
    printf("\n");
}

int main(int argc, char *argv[])
{
    char buff[256];
    int error;
    lua_State *L;
    
    L = luaL_newstate();

    lua_pushboolean(L, 1);
    lua_pushnumber(L, 99);
    lua_pushboolean(L, 0);
    lua_pushstring(L, "Hello ET");

    stackDump(L);

    lua_close(L);
    
    return 0;
}

