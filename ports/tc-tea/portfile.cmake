vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO jixunmoe/libtc_tea
    REF v0.1.4-RC1
    SHA512 a02631518e203c4b4c405f4e997560deafc64c7c04174e1ee73b13a166a8d506dee51ad83fe082ec448e304216f43c330b983f222f0b683f59fcbc240f89b47f
    HEAD_REF main
)

vcpkg_cmake_configure(
  SOURCE_PATH "${SOURCE_PATH}"
  OPTIONS
    -DTC_TEA_BUILD_TESTING=OFF
)

vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE.txt")
vcpkg_cmake_config_fixup()
