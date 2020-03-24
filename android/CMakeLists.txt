cmake_minimum_required(VERSION 3.4.1)

project(wasm3)

set(srcs
    "m3/m3_api_libc.c"
    "m3/m3_api_meta_wasi.c"
    "m3/m3_api_wasi.c"
    "m3/m3_api_tracer.c"
    "m3/m3_bind.c"
    "m3/m3_code.c"
    "m3/m3_compile.c"
    "m3/m3_core.c"
    "m3/m3_emit.c"
    "m3/m3_env.c"
    "m3/m3_exec.c"
    "m3/m3_info.c"
    "m3/m3_module.c"
    "m3/m3_parse.c"
)

add_library(m3 STATIC ${srcs})
target_include_directories(m3 PUBLIC .)
