# Install custom app
IMAGE_INSTALL_append = " \
  arhome \
  "

# Add required packages for Qt applications
IMAGE_INSTALL_append = " \
  qtbase \
  qtbase-plugins \
  qtdeclarative \
  qtdeclarative-plugins \
  qtdeclarative-qmlplugins \
  qtdeclarative-tools \
  qtgraphicaleffects \
  qtquickcontrols2 \
  qtvirtualkeyboard \
  liberation-fonts \
  qtwayland \
  "

