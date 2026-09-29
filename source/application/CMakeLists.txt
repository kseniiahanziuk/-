add_executable(fibonacci_app)

target_sources(fibonacci_app
    PRIVATE
        src/main.cpp
)

target_link_libraries(fibonacci_app PRIVATE fibonacci_lib)

target_compile_features(fibonacci_app PRIVATE cxx_std_23)
set_target_properties(fibonacci_app PROPERTIES CXX_EXTENSIONS OFF)
