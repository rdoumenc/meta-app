COMPATIBLE_MACHINE = "(raspberrypi3|raspberrypi2|raspberrypi)"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

PACKAGECONFIG_FONTS_append = " fontconfig"

# PACKAGECONFIG = " \
#   ${PACKAGECONFIG_RELEASE} \
#   ${PACKAGECONFIG_DEFAULT} \
#   ${PACKAGECONFIG_OPENSSL} \
#   ${PACKAGECONFIG_GL} \
#   ${PACKAGECONFIG_FB} \
#   ${PACKAGECONFIG_FONTS} \
#   ${PACKAGECONFIG_SYSTEM} \
#   ${PACKAGECONFIG_DISTRO} \
#   kms \
# "


EXTRA_OECONF += "'-I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads/' \
  '-I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux/'" 

QT_CONFIG_FLAGS += "-no-use-gold-linker"

