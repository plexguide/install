#!/bin/bash
############# https://github.com/plexguide/PlexGuide.com/graphs/contributors ###
mkdir -p /pg/var/
# FUNCTIONS ####################################################################
common_message() {
tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
$1
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
$2
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF
}

common_number() {
  read -p '↘️  Type Selection | Press [Enter]: ' typed < /dev/tty
}
################################################################################
common_message "🚀 PG Install Interface" "💾 Type a PG Version to Install

alpha

[Z] Exit Interface"
common_number

#git clone -b alpha --single-branch https://github.com/plexguide/PlexGuide.com.git /pg/tmp/checkout
#mv -f /pg/tmp/checkout/mods /pg; fi
################################################################################
echo $typed

exit
