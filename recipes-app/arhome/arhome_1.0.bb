require arhome.inc

# Get the latest revision from master branch
SRC_URI += "git://gitlab.com/rdoumenc/arhome.git;protocol=https;user=USERNAME_HERE:PASSWORD_HERE;branch=master"
SRCREV = "${AUTOREV}"

S = "${WORKDIR}/git"
