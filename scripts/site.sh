#!/usr/bin/env bash
# Generate the footer build-info partial (year + git commit), then run zensical.
# Usage: scripts/site.sh build | scripts/site.sh serve --dev-addr 0.0.0.0:8000
set -euo pipefail
cd "$(dirname "$0")/.."

commit=$(git describe --always --dirty --exclude='*' 2>/dev/null || echo unknown)
printf '&copy; %s pinbot.cc &middot; build: %s\n' "$(date +%Y)" "$commit" \
    > overrides/partials/build-info.html

exec uv run zensical "$@"
