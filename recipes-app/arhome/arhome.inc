SUMMARY = "ARHome is a personal home manager"
DESCRIPTION = "ARHome is an open source (MIT licensed) graphical home manager \
application based on Qt."
HOMEPAGE = "https://gitlab.com/rdoumenc/arhome"

LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=27053026466bf4b74912d02c31a4fbbe \
                   "
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://arhome.init"

DEPENDS = "qtdeclarative qtquickcontrols2 qtgraphicaleffects curl"
RDEPENDS_${PN} = "qtdeclarative-qmlplugins qtgraphicaleffects-qmlplugins libcurl"

inherit cmake_qt5 update-rc.d

EXTRA_OEMAKE += "INSTALL_ROOT=${D}"

FILES_${PN} = "${bindir}/arhome \
               ${bindir}/curlpp-config \
               ${libdir}/libcurlpp.so* \
               ${sysconfdir}/init.d/arhome \
              "
              
do_install_append() {
    install -d ${D}${sysconfdir}/init.d
    install -c -m 755 ${WORKDIR}/arhome.init ${D}${sysconfdir}/init.d/arhome
}

INITSCRIPT_NAME = "arhome"
INITSCRIPT_PARAMS = "defaults"
