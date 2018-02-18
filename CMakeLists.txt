project (com.github.ryanafrish7.canvas)

cmake_minimum_required (VERSION 2.8)

list (APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake)
list (APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake/src)

set (DATADIR "${CMAKE_INSTALL_PREFIX}/share")
set (PKGDATADIR "${DATADIR}/com.github.ryanafrish7.canvas")
set (GETTEXT_PACKAGE ${CMAKE_PROJECT_NAME})
set (EXEC_NAME "com.github.ryanafrish7.canvas")
set (RELEASE_NAME "Canvas")
set (VERSION "0.0.1")
set (VERSION_INFO "First build")

configure_file (${CMAKE_SOURCE_DIR}/src/config.vala.cmake ${CMAKE_BINARY_DIR}/src/config.vala)

add_definitions ("-DGETTEXT_PACKAGE=\"${GETTEXT_PACKAGE}\"")

find_package(PkgConfig)

set (COMMON_DEPS
    gtk+-3.0
    granite>=0.3.0
)

pkg_check_modules(DEPS REQUIRED ${COMMON_DEPS})

add_definitions(${DEPS_CFLAGS})
link_libraries(${DEPS_LIBRARIES})
link_directories(${DEPS_LIBRARY_DIRS})

find_package(Vala REQUIRED)
include(ValaVersion)
ensure_vala_version("0.34" MINIMUM)

add_subdirectory (src)
