---
title: "Lua 5.4.x CMakeLists.txt"
date: 2020-10-30T12:22:14+08:00
slug: "8"
tags: [
    "技术",
    "Lua",
]
---

```
cmake_minimum_required(VERSION 3.12)

project(Lua)

add_definitions(-DLUA_COMPAT_5_3)
if(UNIX)
    add_definitions(-DLUA_USE_LINUX)
endif(UNIX)


### force options
if(WIN32)
    add_compile_options("$<$<C_COMPILER_ID:MSVC>:/utf-8>")
    add_compile_options("$<$<CXX_COMPILER_ID:MSVC>:/utf-8>")
endif()

# see https://www.lua.org/manual/5.4/readme.html#other


### build lib
set(C_FILES lapi.c lcode.c lctype.c ldebug.c ldo.c ldump.c lfunc.c lgc.c llex.c lmem.c lobject.c lopcodes.c lparser.c lstate.c lstring.c ltable.c ltm.c lundump.c lvm.c lzio.c lauxlib.c lbaselib.c lcorolib.c ldblib.c liolib.c lmathlib.c loadlib.c loslib.c lstrlib.c ltablib.c lutf8lib.c linit.c)
# prepend 'src/'
list(TRANSFORM C_FILES PREPEND "src/")
# in C++ style
set_source_files_properties(${C_FILES} PROPERTIES LANGUAGE CXX)
add_library(lua STATIC ${C_FILES})


### build interpreter
set(C_FILES "src/lua.c")
set_source_files_properties(${C_FILES} PROPERTIES LANGUAGE CXX)
add_executable(lua-interpreter ${C_FILES})
target_link_libraries(lua-interpreter lua)
if(UNIX)
    target_link_libraries(lua-interpreter m dl)
endif(UNIX)
set_target_properties(lua-interpreter PROPERTIES OUTPUT_NAME lua)


### build compiler
set(C_FILES "src/luac.c")
set_source_files_properties(${C_FILES} PROPERTIES LANGUAGE CXX)
add_executable(luac ${C_FILES})
target_link_libraries(luac lua)
if(UNIX)
    target_link_libraries(luac m dl)
endif(UNIX)

# install target
install(TARGETS lua
    RUNTIME DESTINATION lib
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib
)
install(TARGETS lua-interpreter luac
    RUNTIME DESTINATION bin
)
install(FILES src/lua.hpp src/lua.h src/lualib.h src/lauxlib.h src/luaconf.h
    DESTINATION include
)
```

<hr style="width: 100%"/>

<h1 style="font-size: 1.5em;color:#555;font-weight: bold;">Comments: (on <a href="https://github.com/jrdeng/jrdeng.github.io/issues/8">github issue)</a></h1>


<script src="https://utteranc.es/client.js"
        repo="jrdeng/jrdeng.github.io"
        issue-number="8"
        theme="github-light"
        crossorigin="anonymous"
        async>
</script>
