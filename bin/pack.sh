#!/usr/bin/env bash
set -euo pipefail
rm -rf dist
mkdir -p dist
zip -r dist/pbi-bhmap-pages.zip index.html README.md >/dev/null
ls -lh dist/pbi-bhmap-pages.zip
