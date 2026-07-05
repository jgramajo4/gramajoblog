#!/usr/bin/env bash
# Vercel build script for this Hugo + PaperMod site.
# Kept as a file because vercel.json's buildCommand is capped at 256 chars.
set -euo pipefail

HUGO_VERSION="${HUGO_VERSION:-0.163.3}"

# Choose a baseURL that matches the domain actually serving this deploy, so
# every asset and link resolves. Hugo bakes baseURL into absolute URLs, so a
# hardcoded domain breaks the whole site when served anywhere else.
#   - production  -> the project's production domain (the custom domain once
#                    it's added in Vercel, otherwise the *.vercel.app domain)
#   - preview     -> that deploy's unique URL, so preview links are self-consistent
#   - local build -> the configured custom domain
if [ "${VERCEL_ENV:-}" = "production" ] && [ -n "${VERCEL_PROJECT_PRODUCTION_URL:-}" ]; then
  BASE_URL="https://${VERCEL_PROJECT_PRODUCTION_URL}/"
elif [ -n "${VERCEL_URL:-}" ]; then
  BASE_URL="https://${VERCEL_URL}/"
else
  BASE_URL="https://gramajo.blog/"
fi
echo "Building with baseURL: ${BASE_URL}"

# Ensure the PaperMod theme is present. On CI the git submodule may not be
# fetched, so clone it directly if the theme files are missing.
if [ ! -f "themes/PaperMod/theme.toml" ]; then
  rm -rf themes/PaperMod
  git clone --depth 1 https://github.com/adityatelange/hugo-PaperMod.git themes/PaperMod
fi

# Fetch the pinned Hugo Extended release and build.
curl -fsSL "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz" \
  | tar -xz -C /tmp hugo

/tmp/hugo --gc --minify --cleanDestinationDir --baseURL "${BASE_URL}"
