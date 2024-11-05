vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO SchaichAlonso/tkrzw
    SHA512 0d87fc3d3e1d52229954a0b5588bd0cfd5bb53ad820fd829d8c72c94735fbb678e6f5947c6404ad214d8ad42cf6ed8db97ae7fd55f8ca13a8ebb5611d1e07640
    REF 3653a70a3a8d02d39cb2e087d057e4159ad86f2a
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)
vcpkg_cmake_install()
vcpkg_copy_pdbs()
vcpkg_fixup_pkgconfig()
vcpkg_cmake_config_fixup(CONFIG_PATH "share/cmake/tkrzw")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share"
                    "${CURRENT_PACKAGES_DIR}/debug/include"
)
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/COPYING")