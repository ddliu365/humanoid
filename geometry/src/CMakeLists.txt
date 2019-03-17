include_directories(${humanoidTester_SOURCE_DIR}/geometry/include)

set(GEOMETRY_SRCS
	shape.cpp ${humanoidTester_SOURCE_DIR}/geometry/include/shape.h
	rectangle.cpp ${humanoidTester_SOURCE_DIR}/geometry/include/rectangle.h
	triangle.cpp ${humanoidTester_SOURCE_DIR}/geometry/include/triangle.h
	)

SET(LIB_TYPE STATIC)

add_library(geometry ${LIB_TYPE} ${GEOMETRY_SRCS})