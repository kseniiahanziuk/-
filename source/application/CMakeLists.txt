add_executable(elevator_app)

target_sources(elevator_app
    PRIVATE
        src/main.cpp
)

target_link_libraries(elevator_app PRIVATE elevator_lib)

target_compile_features(elevator_app PRIVATE cxx_std_23)
set_target_properties(elevator_app PROPERTIES CXX_EXTENSIONS OFF)
