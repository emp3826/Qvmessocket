set(QVMESSOCKET_BASEDIR_COMPONENTS ${CMAKE_SOURCE_DIR}/src/components)
set(QVMESSOCKET_BASEDIR_CORE ${CMAKE_SOURCE_DIR}/src/core)
set(QVMESSOCKET_BASEDIR_BASE ${CMAKE_SOURCE_DIR}/src/base)

set(QV2RAY_BASE_SOURCES
    ${QVMESSOCKET_BASEDIR_BASE}/Qv2rayBaseApplication.cpp
    ${QVMESSOCKET_BASEDIR_BASE}/Qv2rayBaseApplication.hpp
    # Platform Dependent UI
    ${CMAKE_SOURCE_DIR}/src/ui/Qv2rayPlatformApplication.cpp
    ${CMAKE_SOURCE_DIR}/src/ui/Qv2rayPlatformApplication.hpp
    #
    ${QVMESSOCKET_BASEDIR_BASE}/JsonHelpers.hpp
    ${QVMESSOCKET_BASEDIR_BASE}/models/CoreObjectModels.hpp
    ${QVMESSOCKET_BASEDIR_BASE}/models/QvComplexConfigModels.hpp
    ${QVMESSOCKET_BASEDIR_BASE}/models/QvConfigIdentifier.hpp
    ${QVMESSOCKET_BASEDIR_BASE}/models/QvCoreSettings.hpp
    ${QVMESSOCKET_BASEDIR_BASE}/models/QvRuntimeConfig.hpp
    ${QVMESSOCKET_BASEDIR_BASE}/models/QvSafeType.hpp
    ${QVMESSOCKET_BASEDIR_BASE}/models/QvSettingsObject.hpp
    ${QVMESSOCKET_BASEDIR_BASE}/models/QvStartupConfig.hpp
    #
    ${QVMESSOCKET_BASEDIR_BASE}/Qv2rayBase.hpp
    ${QVMESSOCKET_BASEDIR_BASE}/Qv2rayFeatures.hpp
    ${QVMESSOCKET_BASEDIR_BASE}/Qv2rayLog.hpp
    #
    ${CMAKE_SOURCE_DIR}/src/utils/HTTPRequestHelper.cpp
    ${CMAKE_SOURCE_DIR}/src/utils/HTTPRequestHelper.hpp
    ${CMAKE_SOURCE_DIR}/src/utils/QvHelpers.cpp
    ${CMAKE_SOURCE_DIR}/src/utils/QvHelpers.hpp
    #
    ${QVMESSOCKET_BASEDIR_COMPONENTS}/geosite/QvGeositeReader.cpp
    ${QVMESSOCKET_BASEDIR_COMPONENTS}/geosite/QvGeositeReader.hpp
    #
    ${QVMESSOCKET_BASEDIR_COMPONENTS}/latency/LatencyTest.cpp
    ${QVMESSOCKET_BASEDIR_COMPONENTS}/latency/LatencyTest.hpp
    ${QVMESSOCKET_BASEDIR_COMPONENTS}/translations/QvTranslator.cpp
    ${QVMESSOCKET_BASEDIR_COMPONENTS}/translations/QvTranslator.hpp
    ${QVMESSOCKET_BASEDIR_COMPONENTS}/latency/LatencyTestThread.cpp
    ${QVMESSOCKET_BASEDIR_COMPONENTS}/latency/LatencyTestThread.hpp
    ${QVMESSOCKET_BASEDIR_COMPONENTS}/latency/TCPing.cpp
    ${QVMESSOCKET_BASEDIR_COMPONENTS}/latency/TCPing.hpp
    ${QVMESSOCKET_BASEDIR_COMPONENTS}/latency/RealPing.cpp
    ${QVMESSOCKET_BASEDIR_COMPONENTS}/latency/RealPing.hpp
    ${QVMESSOCKET_BASEDIR_COMPONENTS}/latency/DNSBase.hpp
    ${QVMESSOCKET_BASEDIR_COMPONENTS}/latency/win/ICMPPing.cpp
    ${QVMESSOCKET_BASEDIR_COMPONENTS}/latency/win/ICMPPing.hpp
    ${QVMESSOCKET_BASEDIR_COMPONENTS}/latency/unix/ICMPPing.cpp
    ${QVMESSOCKET_BASEDIR_COMPONENTS}/latency/unix/ICMPPing.hpp
    #
    ${QVMESSOCKET_BASEDIR_COMPONENTS}/ntp/QvNTPClient.cpp
    ${QVMESSOCKET_BASEDIR_COMPONENTS}/ntp/QvNTPClient.hpp
    #
    ${QVMESSOCKET_BASEDIR_COMPONENTS}/plugins/QvPluginHost.cpp
    ${QVMESSOCKET_BASEDIR_COMPONENTS}/plugins/QvPluginHost.hpp
    #
    ${QVMESSOCKET_BASEDIR_COMPONENTS}/port/QvPortDetector.cpp
    ${QVMESSOCKET_BASEDIR_COMPONENTS}/port/QvPortDetector.hpp
    #
    ${QVMESSOCKET_BASEDIR_COMPONENTS}/proxy/QvProxyConfigurator.cpp
    ${QVMESSOCKET_BASEDIR_COMPONENTS}/proxy/QvProxyConfigurator.hpp
    #
    ${QVMESSOCKET_BASEDIR_COMPONENTS}/route/RouteSchemeIO.cpp
    ${QVMESSOCKET_BASEDIR_COMPONENTS}/route/RouteSchemeIO.hpp
    #
    ${QVMESSOCKET_BASEDIR_COMPONENTS}/update/UpdateChecker.cpp
    ${QVMESSOCKET_BASEDIR_COMPONENTS}/update/UpdateChecker.hpp
    #
    ${QVMESSOCKET_BASEDIR_CORE}/connection/ConnectionIO.cpp
    ${QVMESSOCKET_BASEDIR_CORE}/connection/ConnectionIO.hpp
    ${QVMESSOCKET_BASEDIR_CORE}/connection/Generation.hpp
    ${QVMESSOCKET_BASEDIR_CORE}/connection/generation/final.cpp
    ${QVMESSOCKET_BASEDIR_CORE}/connection/generation/inbounds.cpp
    ${QVMESSOCKET_BASEDIR_CORE}/connection/generation/outbounds.cpp
    ${QVMESSOCKET_BASEDIR_CORE}/connection/generation/filters.cpp
    ${QVMESSOCKET_BASEDIR_CORE}/connection/generation/routing.cpp
    ${QVMESSOCKET_BASEDIR_CORE}/connection/generation/misc.cpp
    ${QVMESSOCKET_BASEDIR_CORE}/connection/Serialization.cpp
    ${QVMESSOCKET_BASEDIR_CORE}/connection/Serialization.hpp
    ${QVMESSOCKET_BASEDIR_CORE}/connection/serialization/ss.cpp
    ${QVMESSOCKET_BASEDIR_CORE}/connection/serialization/ssd.cpp
    ${QVMESSOCKET_BASEDIR_CORE}/connection/serialization/vmess.cpp
    ${QVMESSOCKET_BASEDIR_CORE}/connection/serialization/vmess_new.cpp
    ${QVMESSOCKET_BASEDIR_CORE}/connection/serialization/vless.cpp
    #
    ${QVMESSOCKET_BASEDIR_CORE}/CoreUtils.cpp
    ${QVMESSOCKET_BASEDIR_CORE}/CoreUtils.hpp
    #
    ${QVMESSOCKET_BASEDIR_CORE}/handler/ConfigHandler.cpp
    ${QVMESSOCKET_BASEDIR_CORE}/handler/ConfigHandler.hpp
    ${QVMESSOCKET_BASEDIR_CORE}/handler/KernelInstanceHandler.cpp
    ${QVMESSOCKET_BASEDIR_CORE}/handler/KernelInstanceHandler.hpp
    ${QVMESSOCKET_BASEDIR_CORE}/handler/RouteHandler.cpp
    ${QVMESSOCKET_BASEDIR_CORE}/handler/RouteHandler.hpp
    #
    ${QVMESSOCKET_BASEDIR_CORE}/kernel/APIBackend.cpp
    ${QVMESSOCKET_BASEDIR_CORE}/kernel/APIBackend.hpp
    ${QVMESSOCKET_BASEDIR_CORE}/kernel/QvKernelABIChecker.cpp
    ${QVMESSOCKET_BASEDIR_CORE}/kernel/QvKernelABIChecker.hpp
    ${QVMESSOCKET_BASEDIR_CORE}/kernel/V2RayKernelInteractions.cpp
    ${QVMESSOCKET_BASEDIR_CORE}/kernel/V2RayKernelInteractions.hpp
    #
    ${QVMESSOCKET_BASEDIR_CORE}/settings/SettingsBackend.cpp
    ${QVMESSOCKET_BASEDIR_CORE}/settings/SettingsBackend.hpp
    ${QVMESSOCKET_BASEDIR_CORE}/settings/SettingsUpgrade.cpp
    )
