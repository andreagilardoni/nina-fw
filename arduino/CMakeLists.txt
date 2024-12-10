file(GLOB all_SRCS
        cores/esp32/*.c
        cores/esp32/*.cpp
        libraries/SPIS/src/*.c
        libraries/SPIS/src/*.cpp
        libraries/WiFi/src/*.c
        libraries/WiFi/src/*.cpp
        libraries/Wire/src/*.c
        libraries/Wire/src/*.cpp
        libraries/ArduinoECCX08/src/*.c
        libraries/ArduinoECCX08/src/*.cpp
        libraries/ArduinoBearSSL/src/*.c
        libraries/ArduinoBearSSL/src/*.cpp
        libraries/ArduinoBearSSL/src/bearssl/*.c
        libraries/ArduinoBearSSL/src/bearssl/*.cpp
        libraries/ArduinoBearSSL/src/utility/*.c
        libraries/ArduinoBearSSL/src/utility/*.cpp
        )

include(CMakePrintHelpers)
cmake_print_variables(all_SRCS)

idf_component_register(
    SRCS            ${all_SRCS}

    INCLUDE_DIRS    "cores/esp32"
                    "libraries/SPIS/src"
                    "libraries/WiFi/src"
                    "libraries/Wire/src"
                    "libraries/ArduinoECCX08/src"
                    "libraries/ArduinoBearSSL/src"

    REQUIRES        # esp_driver_gpio
                    nvs_flash
                    # esp_driver_ledc
                    driver
                    mbedtls
                    # arduino
                    wpa_supplicant
    )
