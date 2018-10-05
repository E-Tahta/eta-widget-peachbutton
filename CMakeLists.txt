project(eta-widget-peachbutton)

find_package(KDE4 REQUIRED)
include(KDE4Defaults)

add_definitions (${QT_DEFINITIONS} ${KDE4_DEFINITIONS})
include_directories(
   ${CMAKE_SOURCE_DIR}
   ${CMAKE_BINARY_DIR}
   ${KDE4_INCLUDES}
   )

set(peachbutton_SRCS

    peachbutton.cpp)


kde4_add_plugin(peach_button_library ${peachbutton_SRCS})
target_link_libraries(peach_button_library
                      ${KDE4_KIO_LIBS}
                      ${KDE4_PLASMA_LIBS}
                      ${KDE4_KCMUTILS_LIBRARY}
                      ${KACTIVITIES_LIBRARY}
                      ${QT_QTDECLARATIVE_LIBRARY}
                      ${X11_XTest_LIB}
                      ${X11_X11_LIB}
                      ${X11_LIBS} )



install(TARGETS peach_button_library DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/kde4/)
install(FILES eta-widget-peachbutton.desktop DESTINATION ${CMAKE_INSTALL_PREFIX}/share/kde4/services/)
install(DIRECTORY package/ DESTINATION ${CMAKE_INSTALL_PREFIX}/share/kde4/apps/plasma/packages/tr.org.etap.peachbutton)
