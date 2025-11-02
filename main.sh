#!/usr/bin/env bash
set -euo pipefail

# Build the site into the `docs/` directory
python3 src/main.py

# Serve the generated site on port 8888
cd docs
echo "Serving ./docs at http://localhost:8888 (Ctrl-C to stop)"
python3 -m http.server 8888