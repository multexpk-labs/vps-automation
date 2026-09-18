#!/usr/bin/env bash
set -u
fail=0

for cmd in curl systemctl ss df; do
  if command -v "$cmd" >/dev/null 2>&1; then echo "OK   $cmd"; else echo "FAIL $cmd"; fail=1; fi
done

state="$(systemctl is-system-running 2>/dev/null || true)"
echo "systemd: ${state:-unknown}"

exit "$fail"
