vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO "SpiriMirror/fTetwild"
    REF "${VERSION}"
    SHA512 689aa59006ecd289c7f30b909a98bc3b8a0c9eb3c3d1d0e9a5c1e9d6fececc6ff804a065d5cca57f04edbe4b41dab55ca0fdd9a5b12c6c22d636314011c08666
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
)

vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug")

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/usage" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE.MPL2")
