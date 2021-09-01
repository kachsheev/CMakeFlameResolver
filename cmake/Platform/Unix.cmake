set(FLAME_PLATFORM Posix)

set(FLAME_STATIC_LIBRARY_SUFFIX ".a")
set(FLAME_SHARED_LIBRARY_SUFFIX ".so")

if(FLAME_THREADING)
	list(APPEND FLAME_DEPENDENCY_SHARED_LIBRARIES Threads::Threads)
	list(APPEND FLAME_DEPENDENCY_STATIC_LIBRARIES Threads::Threads)
endif()

set(FLAME_PLATFORM_INSTALL_HEADER_DIR include)
set(FLAME_PLATFORM_INSTALL_STATIC_DIR lib)
set(FLAME_PLATFORM_INSTALL_SHARED_DIR lib)
set(FLAME_PLATFORM_INSTALL_BINARY_DIR bin)
