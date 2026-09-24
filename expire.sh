#!/usr/bin/env bash
# Manually expire the share early (or re-run if the cron missed).
# Requires `gh` authenticated as snikabor.
set -euo pipefail
REPO="snikabor/AACPDM-PC1-Shared-PDFs-27Sept2026"

echo "Disabling GitHub Pages..."
gh api -X DELETE "/repos/${REPO}/pages" || echo "(Pages may already be disabled)"

echo "Making repo private..."
gh api -X PATCH "/repos/${REPO}" -F private=true >/dev/null

echo "Done. Verifying:"
gh api "/repos/${REPO}" --jq '{private: .private, has_pages: .has_pages}'
