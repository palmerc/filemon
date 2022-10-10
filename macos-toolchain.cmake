set( SDK macosx )
set( MACOS_DEPLOYMENT_TARGET "10.10" )

set( CMAKE_SYSTEM_NAME Darwin )
set( CMAKE_OSX_ARCHITECTURES x86_64 arm64 CACHE STRING "Architectures" )
set( CMAKE_OSX_DEPLOYMENT_TARGET ${MACOS_DEPLOYMENT_TARGET} CACHE STRING "" FORCE )

execute_process( COMMAND xcrun --sdk ${SDK} --find clang
        OUTPUT_VARIABLE CMAKE_C_COMPILER
        OUTPUT_STRIP_TRAILING_WHITESPACE )
set( CMAKE_C_COMPILER ${CMAKE_C_COMPILER} CACHE PATH "clang executable" )

execute_process( COMMAND xcrun --sdk ${SDK} --show-sdk-path
        OUTPUT_VARIABLE CMAKE_OSX_SYSROOT
        OUTPUT_STRIP_TRAILING_WHITESPACE )
set( CMAKE_OSX_SYSROOT ${CMAKE_OSX_SYSROOT} CACHE PATH "sysroot" )

