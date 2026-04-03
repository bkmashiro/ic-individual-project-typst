#!/usr/bin/env bash
# Build script for macOS / Linux
set -e

INPUT="${1:-main.typ}"
OUTPUT="${2:-main.pdf}"
FONT_PATH="fonts/"

# Check typst is installed
if ! command -v typst &>/dev/null; then
  echo "❌ typst not found."
  echo "   macOS:  brew install typst"
  echo "   Linux:  cargo install typst-cli"
  echo "           or: snap install typst"
  echo "   Manual: https://github.com/typst/typst/releases"
  exit 1
fi

echo "🔨 Compiling $INPUT → $OUTPUT ..."
typst compile "$INPUT" "$OUTPUT" --font-path "$FONT_PATH"
echo "✅ Done: $OUTPUT"
