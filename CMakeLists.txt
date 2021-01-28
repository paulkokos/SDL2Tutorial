cmake_minimum_required(VERSION 3.16)
project(SDL2Tutorial)

set(CMAKE_CXX_STANDARD 20)

add_subdirectory(etc)
add_subdirectory(libs)
add_subdirectory(src)
add_subdirectory(tests)



add_executable(MAIN main.cpp)

find_package(SDL2 REQUIRED)
include_directories(${SDL2_INCLUDE_DIR})
set(CMAKE_SHARED_LINKER_FLAGS "-lSDL2main -lSDL2")
target_link_libraries(MAIN SDL2)