file(GLOB all_SRCS
        *.cpp
        *.c
        )

include(CMakePrintHelpers)
cmake_print_variables(CMAKE_CURRENT_SOURCE_DIR)


idf_component_register(
    SRCS            ${all_SRCS}
    INCLUDE_DIRS    "."
    )
