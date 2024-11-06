vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO SchaichAlonso/tkrzw
    SHA512 92138bf695be648bb812baf74d891b1271c116df008393c703f92831575d31d21289a87ceabfe82853108253573998926f307260c1857d214375b61937f9ccfd
    REF b0b14b31aac26683475ac2ead5a920cb2e14aa8f
)
vcpkg_check_features(
    OUT_FEATURE_OPTIONS FEATURE_OPTIONS
    FEATURES
        tools           TKRZW_TOOLS
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
