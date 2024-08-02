cmake_minimum_required(VERSION 3.10)  # 指定 CMake 的最低版本

# 设置项目名称和版本
project(MyProject VERSION 1.0)

# 设置 C++ 标准
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# 添加头文件目录
include_directories(
    ${CMAKE_SOURCE_DIR}/muduo-2.0.2
    ${CMAKE_SOURCE_DIR}/muduo-2.0.2/muduo
    ${CMAKE_SOURCE_DIR}/include
)

# 列出 include 目录和 UserServiceDemo 目录下的源文件
set(COMMON_SOURCES
    ${CMAKE_SOURCE_DIR}/src/MprpcApplication.cc
    ${CMAKE_SOURCE_DIR}/src/MprpcChannel.cc
    ${CMAKE_SOURCE_DIR}/src/MprpcController.cc
    ${CMAKE_SOURCE_DIR}/src/MprpcProvider.cc
    ${CMAKE_SOURCE_DIR}/src/rpc_header.pb.cc
    ${CMAKE_SOURCE_DIR}/src/ZookeeperUtil.cc
    ${CMAKE_SOURCE_DIR}/UserServiceDemo/user.pb.cc

)

# 为 ServerExecutable 添加源文件
set(SERVER_SOURCES
    ${COMMON_SOURCES}
    ${CMAKE_SOURCE_DIR}/UserServiceDemo/server.cc
)

# 为 ClientExecutable 添加源文件
set(CLIENT_SOURCES
    ${COMMON_SOURCES}
    ${CMAKE_SOURCE_DIR}/UserServiceDemo/client.cc
)

# 定义库文件
set(LIBS
    ${CMAKE_SOURCE_DIR}/muduo-2.0.2/build/release-cpp11/lib/libmuduo_net.a
    ${CMAKE_SOURCE_DIR}/muduo-2.0.2/build/release-cpp11/lib/libmuduo_base.a
    ${CMAKE_SOURCE_DIR}/protobuf-3.21.12/src/.libs/libprotobuf.a
    -lzookeeper_mt
    -lpthread
)

# 设置可执行文件输出目录
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin)

# 添加可执行文件
add_executable(Server ${SERVER_SOURCES})
add_executable(Client ${CLIENT_SOURCES})

# 链接库文件
target_link_libraries(Server ${LIBS})
target_link_libraries(Client ${LIBS})

# 添加预定义宏
add_definitions(-DTHREADED)
