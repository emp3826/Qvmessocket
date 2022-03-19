find_package(OpenSSL REQUIRED)
target_link_libraries(qvmessocket_baselib wininet wsock32 ws2_32 user32 Rasapi32 Iphlpapi OpenSSL::SSL OpenSSL::Crypto Dbghelp)

install(TARGETS qvmessocket RUNTIME DESTINATION .)

if(NOT QV2RAY_EMBED_TRANSLATIONS)
    install(FILES ${QV2RAY_QM_FILES} DESTINATION lang)
endif()

install(DIRECTORY ${CMAKE_BINARY_DIR}/winqt/ DESTINATION .)

set(APPS "\${CMAKE_INSTALL_PREFIX}/qv2ray.exe")

include(cmake/deployment.cmake)

if(QV2RAY_AUTO_DEPLOY)
    if(QV2RAY_QT6)
        set(QV2RAY_QtX_DIR ${Qt6_DIR})
    else()
        set(QV2RAY_QtX_DIR ${Qt5_DIR})
    endif()
    add_custom_command(TARGET qvmessocket
        POST_BUILD
        COMMAND ${QV2RAY_QtX_DIR}/../../../bin/windeployqt ${CMAKE_BINARY_DIR}/qv2ray.exe --compiler-runtime --verbose 2 --dir ${CMAKE_BINARY_DIR}/winqt/)
endif()
