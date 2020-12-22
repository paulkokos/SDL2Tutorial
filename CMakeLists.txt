cmake_minimum_required(VERSION 3.16)
project(SDL2Tutorial)

set(CMAKE_CXX_STANDARD 20)

find_package(SDL2 REQUIRED)
include_directories(${SDL2_INCLUDE_DIR})
set(CMAKE_SHARED_LINKER_FLAGS "-lSDL2main -lSDL2")

add_executable(SDL2Tutorial main.cpp "[Lesson 01]/[Lesson01] Hello SDL.cpp" "[Lesson 02]/main.cpp")
target_link_libraries(SDL2Tutorial SDL2)