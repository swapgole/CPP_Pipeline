
cd build 
cmake .. -G "Visual Studio 16 2019" 
cmake --build . --config Release 
.\bin\calc_test.exe --gtest_output="xml:report.xml"

REM Inspect your current project’s dependencies:conan info ..
REM Generate a dependencies graph for the current project: conan info .. --graph=graph.html