#!/bin/bash
############# https://github.com/plexguide/PlexGuide.com/graphs/contributors ###
mkdir -p /pg/var/
# FUNCTIONS ####################################################################
common_header() {
tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
$1
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF
}
# EXECUTION ####################################################################
mkdir -p /pg/tmp/install /pg/var
rm -rf /pg/tmp/install/
git clone -b v1 --single-branch https://github.com/plexguide/install.git /pg/tmp/install
cp /pg/tmp/install/pgupdate /bin/bash

common_header "🚀 Initial Install Complete - Type [pgupdate] to start!"
common_confirm
