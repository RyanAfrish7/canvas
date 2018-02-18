include(ValaPrecompile)
vala_precompile(
    VALA_C ${EXEC_NAME}
        ${CMAKE_CURRENT_BINARY_DIR}/config.vala
        main.vala
        Application.vala
        MainWindow.vala
    PACKAGES
        ${COMMON_DEPS}
)

add_executable(${EXEC_NAME} ${VALA_C})

install (TARGETS ${EXEC_NAME} RUNTIME DESTINATION bin)
install (FILES ${CMAKE_CURRENT_SOURCE_DIR}/data/com.github.ryanafrish7.canvas.desktop DESTINATION ${DATADIR}/applications/)
install (FILES ${CMAKE_CURRENT_SOURCE_DIR}/data/com.github.ryanafrish7.canvas.appdata.xml DESTINATION ${DATADIR}/metainfo/)
