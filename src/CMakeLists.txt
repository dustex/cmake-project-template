add_executable(
  template-project
  main.cpp
  )

target_link_libraries(template-project Qt5::Widgets)

# deploy with windeployqt.exe
get_target_property(_qmake_executable Qt5::qmake IMPORTED_LOCATION)
get_filename_component(_qt_bin_dir "${_qmake_executable}" DIRECTORY)
find_program(WINDEPLOYQT_EXECUTABLE windeployqt HINTS "${_qt_bin_dir}")

add_custom_command(TARGET template-project POST_BUILD
    COMMAND "${CMAKE_COMMAND}" -E
        env PATH="${_qt_bin_dir}" "${WINDEPLOYQT_EXECUTABLE}"
            --quick
            --no-translations
            --verbose 0
            --no-compiler-runtime
            \"$<TARGET_FILE:template-project>\"
    COMMENT "Deploying Qt..."
)