#!/bin/bash
# About.Gaymer.Social - Local dev server
# Usage: ./dev-server.sh [port] [--no-dev-mode]
#
# This repo is now a static redirect shell (no build step), so "the dev
# server" is just a plain static file server. index.html/404.html detect
# localhost/127.0.0.1 and show a dev banner instead of firing the redirect,
# unless ?nodev=1 is on the URL - that's what makes DEV_MODE "on by default"
# here, since there's no config file to flip.
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
    echo "Serving with dev-mode suppressed - open http://127.0.0.1:$PORT/?nodev=1 to see the real redirect."
else
    echo "Serving at http://127.0.0.1:$PORT/ - dev banner shown, redirect suppressed."
    echo "Append ?nodev=1 to test the real redirect locally."
fi

if command -v python3 >/dev/null 2>&1; then
    python3 -m http.server "$PORT"
else
    python -m http.server "$PORT"
fi
