add_executable(probe_app)

target_sources(probe_app
    PRIVATE
        src/main.cpp
)

target_compile_features(probe_app PRIVATE cxx_std_23)
set_target_properties(probe_app PROPERTIES CXX_EXTENSIONS OFF)
