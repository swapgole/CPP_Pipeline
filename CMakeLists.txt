PROJECT(MyTestingExample)
cmake_minimum_required(VERSION 2.8)

include(build/conanbuildinfo.cmake)
CONAN_BASIC_SETUP()

OPTION(BUILD_TEST "Build the tests" TRUE)

ADD_LIBRARY(calclib calc.cpp)
TARGET_LINK_LIBRARIES(calclib ${CONAN_LIBS})

IF(BUILD_TEST)
	ADD_EXECUTABLE(calc_test test/calc_test.cpp)
	TARGET_LINK_LIBRARIES(calc_test calclib ${CONAN_LIBS})
ENDIF()