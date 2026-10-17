add_library(elevator_lib STATIC)

target_sources(elevator_lib
    PRIVATE
        src/elevator.cpp
)

target_include_directories(elevator_lib PUBLIC include)

target_compile_features(elevator_lib PRIVATE cxx_std_23)
set_target_properties(elevator_lib PROPERTIES CXX_EXTENSIONS OFF)
