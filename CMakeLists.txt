cmake_minimum_required(VERSION 3.16)

list(APPEND EXTRA_COMPONENT_DIRS "arduino")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DARDUINO -mlongcalls")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DARDUINO -mlongcalls")

include($ENV{IDF_PATH}/tools/cmake/project.cmake)
project(nina-fw)
