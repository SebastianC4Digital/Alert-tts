cmake_minimum_required(VERSION 3.5.1)


# Compile options
add_compile_options(-std=c++11)
project(alert)

include(CTest)
enable_testing()

add_executable(alert main.cpp)

target_link_libraries(alert espeak)
set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
