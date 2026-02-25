#!/bin/bash
# /usr/local/bin/.sys/update.sh (recovered)
# NOTE: This file is provided as evidence for analysis only.

case "${1:-}" in
  --silent)
    # Lightweight beacon simulation: write a marker and exit.
    echo "$(date -u +%FT%TZ) ok" >> /var/tmp/.cache/.rotate.log 2>/dev/null
    exit 0
    ;;
esac

echo "unknown option" >&2
exit 1
