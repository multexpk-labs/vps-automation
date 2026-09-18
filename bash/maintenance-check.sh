#!/usr/bin/env bash
set -u

echo "=== VPS Maintenance Check ==="
echo "Date: $(date -Is)"
echo
uptime
echo
df -hT
echo
free -h
echo
systemctl --failed --no-pager 2>/dev/null || true
echo
journalctl --disk-usage 2>/dev/null || true
