# target level CMakeLists

# project(library1)



message("CMAKE_PROJECT_NAME: ${CMAKE_PROJECT_NAME}")
message("CMAKE_SOURCE_DIR: ${CMAKE_SOURCE_DIR}")
message("CMAKE_BINARY_DIR: ${CMAKE_BINARY_DIR}")

message("PROJECT_NAME: ${PROJECT_NAME}")
message("PROJECT_SOURCE_DIR: ${PROJECT_SOURCE_DIR}")
message("PROJECT_BINARY_DIR: ${PROJECT_BINARY_DIR}")

message("CMAKE_CURRENT_SOURCE_DIR: ${CMAKE_CURRENT_SOURCE_DIR}")
message("CMAKE_CURRENT_BINARY_DIR: ${CMAKE_CURRENT_BINARY_DIR}")
message("CMAKE_CURRENT_LIST_DIR: ${CMAKE_CURRENT_LIST_DIR}")





# targets and directories

# add_library(library1 STATIC
#     library1.c
# )
# target_include_directories(library1
#     PUBLIC
#         # ../../
#         $<BUILD_INTERFACE:${CMAKE_SOURCE_DIR}/../>
#         $<INSTALL_INTERFACE:include>
# )

add_library(library1 STATIC
    library1.c
)
set_target_properties(library1 PROPERTIES 
    OUTPUT_NAME repo2_1_library1
)
target_include_directories(library1
    PUBLIC
        $<BUILD_INTERFACE:${CMAKE_SOURCE_DIR}/../>
        $<INSTALL_INTERFACE:include>
)
