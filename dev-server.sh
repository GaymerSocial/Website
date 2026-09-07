#!/bin/bash
# GaymerSocial/Website - Local dev server
# Usage: ./dev-server.sh [port] [--no-dev-mode]
#   port            default: 8000
#   --no-dev-mode   just a reminder of how to suppress the dev banner (see below)
#
# This is a plain static site with no build step, so "the dev server" is
# just Python's built-in one. The dev-mode banner is driven client-side by
# index.html/404.html (shown whenever the page is loaded from localhost),
# so there's nothing to force on server-side - --no-dev-mode here only
# prints the URL flag that suppresses it.
set -e

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PORT=8000
NO_DEV_MODE=0

while [ $# -gt 0 ]; do
    case "$1" in
        --no-dev-mode) NO_DEV_MODE=1; shift ;;
        ''|*[!0-9]*) echo "Unknown option: $1" >&2; exit 1 ;;
        *) PORT="$1"; shift ;;
    esac
done

cd "$DIR"

if [ "$NO_DEV_MODE" = "1" ]; then
    echo "Serving at http://127.0.0.1:$PORT/?nodev=1 (dev banner suppressed)"
else
    echo "Serving at http://127.0.0.1:$PORT/ (dev banner on - add ?nodev=1 to suppress it)"
fi

if command -v python3 >/dev/null 2>&1; then
    python3 -m http.server "$PORT"
else
    python -m http.server "$PORT"
fi
