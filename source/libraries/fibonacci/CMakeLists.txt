add_library(fibonacci_lib STATIC)

target_sources(fibonacci_lib
    PRIVATE
        src/fibonacci.cpp
)

target_include_directories(fibonacci_lib PUBLIC include)

target_compile_features(fibonacci_lib PRIVATE cxx_std_23)
set_target_properties(fibonacci_lib PROPERTIES CXX_EXTENSIONS OFF)
