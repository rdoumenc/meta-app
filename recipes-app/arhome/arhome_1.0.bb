require arhome.inc

# Get the latest revision from master branch
SRC_URI += "git://gitlab.com/rdoumenc/arhome.git;protocol=https;user=rdoumenc:remiriden1424;branch=master"
SRCREV = "${AUTOREV}"

S = "${WORKDIR}/git"
