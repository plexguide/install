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
  read -p 'Confirm Information | Press [ENTER] ' typed </dev/tty
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
chmod 0755 /bin/pgupdate
chown 1000:1000 /bin/pgupdate

echo ""
cat << "EOF"
[38;5;33m┌[0m[38;5;33m─[0m[38;5;33m─[0m[38;5;33m─[0m[38;5;33m─[0m[38;5;33m─[0m[38;5;33m─[0m[38;5;33m─[0m[38;5;33m─[0m[38;5;39m─[0m[38;5;39m─[0m[38;5;39m─[0m[38;5;39m─[0m[38;5;39m─[0m[38;5;39m─[0m[38;5;39m─[0m[38;5;39m─[0m[38;5;39m─[0m[38;5;38m─[0m[38;5;44m─[0m[38;5;44m─[0m[38;5;44m─[0m[38;5;44m─[0m[38;5;44m─[0m[38;5;44m─[0m[38;5;44m─[0m[38;5;44m─[0m[38;5;44m─[0m[38;5;44m─[0m[38;5;44m─[0m[38;5;43m─[0m[38;5;49m─[0m[38;5;49m─[0m[38;5;49m─[0m[38;5;49m─[0m[38;5;49m─[0m[38;5;49m─[0m[38;5;49m─[0m[38;5;49m┐[0m
[38;5;33m│[0m[38;5;33m░[0m[38;5;33m░[0m[38;5;33m░[0m[38;5;33m░[0m[38;5;33m░[0m[38;5;39m░[0m[38;5;39m░[0m[38;5;39m░[0m[38;5;39m░[0m[38;5;39m░[0m[38;5;39m░[0m[38;5;39m░[0m[38;5;39m░[0m[38;5;39m░[0m[38;5;38m░[0m[38;5;44m░[0m[38;5;44m░[0m[38;5;44m░[0m[38;5;44m░[0m[38;5;44m░[0m[38;5;44m░[0m[38;5;44m░[0m[38;5;44m░[0m[38;5;44m░[0m[38;5;44m░[0m[38;5;44m░[0m[38;5;43m░[0m[38;5;49m░[0m[38;5;49m░[0m[38;5;49m░[0m[38;5;49m░[0m[38;5;49m░[0m[38;5;49m░[0m[38;5;49m░[0m[38;5;49m░[0m[38;5;49m░[0m[38;5;48m░[0m[38;5;48m│[0m
[38;5;33m│[0m[38;5;33m░[0m[38;5;33m█[0m[38;5;39m▀[0m[38;5;39m█[0m[38;5;39m░[0m[38;5;39m█[0m[38;5;39m░[0m[38;5;39m░[0m[38;5;39m░[0m[38;5;39m█[0m[38;5;39m▀[0m[38;5;38m▀[0m[38;5;44m░[0m[38;5;44m█[0m[38;5;44m░[0m[38;5;44m█[0m[38;5;44m░[0m[38;5;44m█[0m[38;5;44m▀[0m[38;5;44m▀[0m[38;5;44m░[0m[38;5;44m█[0m[38;5;44m░[0m[38;5;43m█[0m[38;5;49m░[0m[38;5;49m▀[0m[38;5;49m█[0m[38;5;49m▀[0m[38;5;49m░[0m[38;5;49m█[0m[38;5;49m▀[0m[38;5;49m▄[0m[38;5;49m░[0m[38;5;48m█[0m[38;5;48m▀[0m[38;5;48m▀[0m[38;5;48m░[0m[38;5;48m│[0m
[38;5;39m│[0m[38;5;39m░[0m[38;5;39m█[0m[38;5;39m▀[0m[38;5;39m▀[0m[38;5;39m░[0m[38;5;39m█[0m[38;5;39m░[0m[38;5;39m░[0m[38;5;38m░[0m[38;5;44m█[0m[38;5;44m▀[0m[38;5;44m▀[0m[38;5;44m░[0m[38;5;44m▄[0m[38;5;44m▀[0m[38;5;44m▄[0m[38;5;44m░[0m[38;5;44m█[0m[38;5;44m░[0m[38;5;44m█[0m[38;5;43m░[0m[38;5;49m█[0m[38;5;49m░[0m[38;5;49m█[0m[38;5;49m░[0m[38;5;49m░[0m[38;5;49m█[0m[38;5;49m░[0m[38;5;49m░[0m[38;5;49m█[0m[38;5;48m░[0m[38;5;48m█[0m[38;5;48m░[0m[38;5;48m█[0m[38;5;48m▀[0m[38;5;48m▀[0m[38;5;48m░[0m[38;5;48m│[0m
[38;5;39m│[0m[38;5;39m░[0m[38;5;39m▀[0m[38;5;39m░[0m[38;5;39m░[0m[38;5;39m░[0m[38;5;38m▀[0m[38;5;44m▀[0m[38;5;44m▀[0m[38;5;44m░[0m[38;5;44m▀[0m[38;5;44m▀[0m[38;5;44m▀[0m[38;5;44m░[0m[38;5;44m▀[0m[38;5;44m░[0m[38;5;44m▀[0m[38;5;44m░[0m[38;5;43m▀[0m[38;5;49m▀[0m[38;5;49m▀[0m[38;5;49m░[0m[38;5;49m▀[0m[38;5;49m▀[0m[38;5;49m▀[0m[38;5;49m░[0m[38;5;49m▀[0m[38;5;49m▀[0m[38;5;48m▀[0m[38;5;48m░[0m[38;5;48m▀[0m[38;5;48m▀[0m[38;5;48m░[0m[38;5;48m░[0m[38;5;48m▀[0m[38;5;48m▀[0m[38;5;48m▀[0m[38;5;84m░[0m[38;5;83m│[0m
[38;5;39m│[0m[38;5;39m░[0m[38;5;39m░[0m[38;5;38m░[0m[38;5;44m░[0m[38;5;44m░[0m[38;5;44m░[0m[38;5;44m░[0m[38;5;44m░[0m[38;5;44m░[0m[38;5;44m░[0m[38;5;44m░[0m[38;5;44m░[0m[38;5;44m░[0m[38;5;44m░[0m[38;5;43m░[0m[38;5;49m░[0m[38;5;49m░[0m[38;5;49m░[0m[38;5;49m░[0m[38;5;49m░[0m[38;5;49m░[0m[38;5;49m░[0m[38;5;49m░[0m[38;5;49m░[0m[38;5;48m░[0m[38;5;48m░[0m[38;5;48m░[0m[38;5;48m░[0m[38;5;48m░[0m[38;5;48m░[0m[38;5;48m░[0m[38;5;48m░[0m[38;5;48m░[0m[38;5;84m░[0m[38;5;83m░[0m[38;5;83m░[0m[38;5;83m░[0m[38;5;83m│[0m
[38;5;38m└[0m[38;5;44m─[0m[38;5;44m─[0m[38;5;44m─[0m[38;5;44m─[0m[38;5;44m─[0m[38;5;44m─[0m[38;5;44m─[0m[38;5;44m─[0m[38;5;44m─[0m[38;5;44m─[0m[38;5;44m─[0m[38;5;43m─[0m[38;5;49m─[0m[38;5;49m─[0m[38;5;49m─[0m[38;5;49m─[0m[38;5;49m─[0m[38;5;49m─[0m[38;5;49m─[0m[38;5;49m─[0m[38;5;49m─[0m[38;5;48m─[0m[38;5;48m─[0m[38;5;48m─[0m[38;5;48m─[0m[38;5;48m─[0m[38;5;48m─[0m[38;5;48m─[0m[38;5;48m─[0m[38;5;48m─[0m[38;5;84m─[0m[38;5;83m─[0m[38;5;83m─[0m[38;5;83m─[0m[38;5;83m─[0m[38;5;83m─[0m[38;5;83m─[0m[38;5;83m┘[0m
EOF

cat << "EOF"
┌─────────────────────────────────────┐
│       PG Installer Interface        │
│ ————————————————————————————————————│
│ Star PG:      plexguide.com/github  │
│ Donate:       plexguide.com/donate  │
│ ————————————————————————————————————│                                   │
│ 🚀 To Continue, type >>> pgupdate   │
│ ——————————————————————————————————— │
│ An Original Admin9705 Project       │
│                                     │
│ Dedicated to:                       │
│ Deiteq, YasQueen84 & JasMarie       │
└─────────────────────────────────────┘
EOF

#common_header "🚀 Initial Install Complete - Type [pgupdate] to start!"
#common_confirm
