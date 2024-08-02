# Install script for directory: /home/asuiiiyi/Repository/TinyRPC/muduo-2.0.2/muduo/base

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/asuiiiyi/Repository/TinyRPC/build/release-install-cpp11")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "release")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "0")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/asuiiiyi/Repository/TinyRPC/build/release-cpp11/lib/libmuduo_base.a")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/muduo/base" TYPE FILE FILES
    "/home/asuiiiyi/Repository/TinyRPC/muduo-2.0.2/muduo/base/AsyncLogging.h"
    "/home/asuiiiyi/Repository/TinyRPC/muduo-2.0.2/muduo/base/Atomic.h"
    "/home/asuiiiyi/Repository/TinyRPC/muduo-2.0.2/muduo/base/BlockingQueue.h"
    "/home/asuiiiyi/Repository/TinyRPC/muduo-2.0.2/muduo/base/BoundedBlockingQueue.h"
    "/home/asuiiiyi/Repository/TinyRPC/muduo-2.0.2/muduo/base/Condition.h"
    "/home/asuiiiyi/Repository/TinyRPC/muduo-2.0.2/muduo/base/CountDownLatch.h"
    "/home/asuiiiyi/Repository/TinyRPC/muduo-2.0.2/muduo/base/CurrentThread.h"
    "/home/asuiiiyi/Repository/TinyRPC/muduo-2.0.2/muduo/base/Date.h"
    "/home/asuiiiyi/Repository/TinyRPC/muduo-2.0.2/muduo/base/Exception.h"
    "/home/asuiiiyi/Repository/TinyRPC/muduo-2.0.2/muduo/base/FileUtil.h"
    "/home/asuiiiyi/Repository/TinyRPC/muduo-2.0.2/muduo/base/GzipFile.h"
    "/home/asuiiiyi/Repository/TinyRPC/muduo-2.0.2/muduo/base/LogFile.h"
    "/home/asuiiiyi/Repository/TinyRPC/muduo-2.0.2/muduo/base/LogStream.h"
    "/home/asuiiiyi/Repository/TinyRPC/muduo-2.0.2/muduo/base/Logging.h"
    "/home/asuiiiyi/Repository/TinyRPC/muduo-2.0.2/muduo/base/Mutex.h"
    "/home/asuiiiyi/Repository/TinyRPC/muduo-2.0.2/muduo/base/ProcessInfo.h"
    "/home/asuiiiyi/Repository/TinyRPC/muduo-2.0.2/muduo/base/Singleton.h"
    "/home/asuiiiyi/Repository/TinyRPC/muduo-2.0.2/muduo/base/StringPiece.h"
    "/home/asuiiiyi/Repository/TinyRPC/muduo-2.0.2/muduo/base/Thread.h"
    "/home/asuiiiyi/Repository/TinyRPC/muduo-2.0.2/muduo/base/ThreadLocal.h"
    "/home/asuiiiyi/Repository/TinyRPC/muduo-2.0.2/muduo/base/ThreadLocalSingleton.h"
    "/home/asuiiiyi/Repository/TinyRPC/muduo-2.0.2/muduo/base/ThreadPool.h"
    "/home/asuiiiyi/Repository/TinyRPC/muduo-2.0.2/muduo/base/TimeZone.h"
    "/home/asuiiiyi/Repository/TinyRPC/muduo-2.0.2/muduo/base/Timestamp.h"
    "/home/asuiiiyi/Repository/TinyRPC/muduo-2.0.2/muduo/base/Types.h"
    "/home/asuiiiyi/Repository/TinyRPC/muduo-2.0.2/muduo/base/WeakCallback.h"
    "/home/asuiiiyi/Repository/TinyRPC/muduo-2.0.2/muduo/base/copyable.h"
    "/home/asuiiiyi/Repository/TinyRPC/muduo-2.0.2/muduo/base/noncopyable.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

