#!/usr/bin/env bash
# Builds the e-book in EPUB, DOCX, HTML and PDF from manuscript/*.md
set -euo pipefail
cd "$(dirname "$0")/.."
SRC=(manuscript/0*.md)
OUT=dist
mkdir -p "$OUT"
COMMON=(--from markdown --lua-filter build/chapters.lua --toc --toc-depth=1 --metadata toc-title=Contents)
pandoc "${SRC[@]}" "${COMMON[@]}" --epub-cover-image=build/cover.png -o "$OUT/Dry-Nights-Ahead.epub" 2>/dev/null \
  || pandoc "${SRC[@]}" "${COMMON[@]}" -o "$OUT/Dry-Nights-Ahead.epub"
pandoc "${SRC[@]}" "${COMMON[@]}" -o "$OUT/Dry-Nights-Ahead.docx"
pandoc "${SRC[@]}" "${COMMON[@]}" --standalone --embed-resources --css build/book.css \
  --include-before-body build/title-page.html -o "$OUT/Dry-Nights-Ahead.html"
NODE_PATH="${NODE_PATH:-$(npm root -g)}" node build/pdf.js "$OUT/Dry-Nights-Ahead.html" "$OUT/Dry-Nights-Ahead.pdf"
