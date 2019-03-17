
include_directories(${humanoidTester_SOURCE_DIR}/geometry/include)

link_directories(${humanoidTester_SOURCE_DIR}/geometry/src)

add_executable(tester main.cpp)
target_link_libraries(tester geometry)
ADD_DEPENDENCIES(tester geometry)



