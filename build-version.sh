#!/usr/bin/env sh
set -eu

count=$(git rev-list --count HEAD 2>/dev/null || echo 0)
hash=$(git rev-parse --short HEAD 2>/dev/null || echo dev)
cat > version.js <<EOF
// Generated build version. Run ./build-version.sh to update this file.
const BUILD_VERSION = 'build-${count} (${hash})';
EOF
