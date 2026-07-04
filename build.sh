#!/usr/bin/env bash
# Vercel build script for this Hugo + PaperMod site.
# Kept as a file because vercel.json's buildCommand is capped at 256 chars.
set -euo pipefail

HUGO_VERSION="${HUGO_VERSION:-0.163.3}"

# Ensure the PaperMod theme is present. On CI the git submodule may not be
# fetched, so clone it directly if the theme files are missing.
if [ ! -f "themes/PaperMod/theme.toml" ]; then
  rm -rf themes/PaperMod
  git clone --depth 1 https://github.com/adityatelange/hugo-PaperMod.git themes/PaperMod
fi

# Fetch the pinned Hugo Extended release and build.
curl -fsSL "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz" \
  | tar -xz -C /tmp hugo

/tmp/hugo --gc --minify --baseURL "https://gramajo.blog/"
