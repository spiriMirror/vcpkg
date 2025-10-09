vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO "SpiriMirror/fTetwild"
    REF "${VERSION}"
    SHA512 fed61be655dd58b502298ecda6f805d4737e3fe5c720b9be075acdff23ab2ac393589aea2bf92ddfa531d6fa19750e77848f19e073fe69eec2b5bf5a43c1e57d
    HEAD_REF mini20
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
    "-DFLOAT_TETWILD_BUILD_TESTS=OFF"
    "-DFLOAT_TETWILD_BUILD_CLI=OFF"
)

vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug")

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/usage" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE.MPL2")