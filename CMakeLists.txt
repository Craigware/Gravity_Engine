cmake_minimum_required(VERSION 3.27.1)

project(Gravity_Engine)
set(CMAKE_CXX_STANDARD 17)
find_package(Vulkan REQUIRED)


set(SOURCE_FILES
  main.cpp
)

add_executable(Gravity_Engine ${SOURCE_FILES})
target_link_libraries(
  Gravity_Engine 
  PRIVATE Vulkan::Vulkan
  PRIVATE C:/Users/Craig/projects/C++/CPP_Lib/glfw-3.3.8.bin.WIN64/lib-mingw-w64/libglfw3.a
)

target_include_directories(
  Gravity_Engine 
  PRIVATE C:/Users/Craig/projects/C++/CPP_Lib/glfw-3.3.8.bin.WIN64/include
  PRIVATE C:/Users/Craig/projects/C++/CPP_Lib/glm
)