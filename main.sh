#!/usr/bin/env bash
set -euo pipefail

# Accept an optional basepath argument (useful if hosting under a subpath).
# Default to site root '/' so generated links like /images/... work when serving `docs/` as the HTTP root.
basepath="${1:-/}"

# Build the site into the `docs/` directory
python3 src/main.py "$basepath"

# Serve the generated site on port 8888
cd /home/cheek/workspace/TwinStarTarot/twinstartarot/docs
echo "Serving ./docs at http://localhost:8888 (Ctrl-C to stop)"
python3 -m http.server 8888