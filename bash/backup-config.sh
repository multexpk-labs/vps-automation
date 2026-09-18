#!/usr/bin/env bash
set -euo pipefail

DEST="${1:-/root/config-backups}"
STAMP="$(date +%Y%m%d-%H%M%S)"
mkdir -p "$DEST"
ARCHIVE="$DEST/system-config-$STAMP.tar.gz"

tar -czf "$ARCHIVE" /etc/ssh /etc/systemd/system /etc/fstab 2>/dev/null || true

echo "Created: $ARCHIVE"
