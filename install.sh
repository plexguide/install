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

common_confirm() {
  read -p 'Confirm Information | Press [Enter] ' typed </dev/tty
}

common_fcreate_silent() {
    mkdir -p "$1"
    chown 1000:1000 "$1"
    chmod 0775 "$1"
}

# EXECUTION ####################################################################
common_fcreate_silent /pg/tmp/install
common_fcreate_silent /pg/var

rm -rf /pg/tmp/install/*
git clone -b v1 --single-branch https://github.com/plexguide/install.git /pg/tmp/install
cp /pg/tmp/install/pgupdate /bin/
chmod 0755 /pg/pgupdate
chown 1000:1000 /pgupdate

common_header "🚀 Initial Install Complete - Type [pgupdate] to start!"
common_confirm
