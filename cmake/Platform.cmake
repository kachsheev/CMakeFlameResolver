include(GNUInstallDirs)

if(UNIX AND NOT APPLE)
	include(Platform/Unix)
elseif(WIN32)
	include(Platform/Windows)
else()
	message(FATAL_ERROR "Not supported platform")
endif()

set(FLAME_INSTALL_HEADER_DIR ${CMAKE_INSTALL_INCLUDEDIR})
set(FLAME_INSTALL_STATIC_DIR ${CMAKE_INSTALL_LIBDIR})
set(FLAME_INSTALL_SHARED_DIR ${FLAME_PLATFORM_INSTALL_SHARED_DIR})
set(FLAME_INSTALL_BINARY_DIR ${CMAKE_INSTALL_BINDIR})
