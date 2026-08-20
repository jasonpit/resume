#!/usr/bin/env bash
# Build the resume site into _site/, plus the EU-targeted PDF into _private/.
#
#   _site/     published to GitHub Pages (public)
#   _private/  NOT published — EU variant, collected as a CI artifact
#
# Requires: pandoc, python3 + weasyprint.
# Set PYTHON=/path/to/venv/bin/python if weasyprint lives in a virtualenv.
set -euo pipefail

cd "$(dirname "$0")"

OUT=_site
PRIV=_private
PY="${PYTHON:-python3}"

rm -rf "$OUT" "$PRIV"
mkdir -p "$OUT" "$PRIV"

cp assets/resume.css "$OUT/resume.css"
cp assets/resume.css "$PRIV/resume.css"

# --- resume, one HTML per variant -------------------------------------------

render_resume() {
  local variant="$1" dest="$2" isresume="$3"
  python3 scripts/variant.py "$variant" < resume.md > "$dest/.resume.md"
  pandoc "$dest/.resume.md" \
    --from markdown+smart \
    --to html5 \
    --template templates/page.html \
    --metadata title="Jason Pittman — Cloud Security Architect" \
    --metadata description="Cloud Security Architect at Warner Bros. Discovery. AI and agentic security at enterprise scale, multi-cloud governance." \
    ${isresume:+--metadata isresume=true} \
    -o "$dest/index.html"
  rm -f "$dest/.resume.md"
}

render_resume public "$OUT"  yes
render_resume eu     "$PRIV" ""

# --- technology index (public only) -----------------------------------------

pandoc skills.md \
  --from markdown+smart \
  --to html5 \
  --template templates/page.html \
  --metadata title="Jason Pittman — Technology Index" \
  --metadata description="Full inventory of the platforms, tools, and technologies I have worked with." \
  -o "$OUT/skills.html"

# --- PDFs, reporting page counts --------------------------------------------

"$PY" - <<'PYEOF'
from weasyprint import HTML
import json, pathlib

jobs = [
    ("_site/index.html",    "_site/Jason_Pittman_Resume.pdf",       "public"),
    ("_private/index.html", "_private/Jason_Pittman_Resume_EU.pdf", "eu"),
]
counts = {}
for src, dest, name in jobs:
    doc = HTML(src).render()
    doc.write_pdf(dest)
    counts[name] = len(doc.pages)

pathlib.Path("_private/.counts.json").write_text(json.dumps(counts))
PYEOF

PUBLIC_PAGES=$("$PY" -c "import json;print(json.load(open('_private/.counts.json'))['public'])")
EU_PAGES=$("$PY" -c "import json;print(json.load(open('_private/.counts.json'))['eu'])")
rm -f "$PRIV/.counts.json" "$PRIV/resume.css" "$PRIV/index.html"

echo "Built:"
echo "  $OUT/Jason_Pittman_Resume.pdf        ${PUBLIC_PAGES} page(s)  [published]"
echo "  $PRIV/Jason_Pittman_Resume_EU.pdf    ${EU_PAGES} page(s)  [not published]"

OVER=0
for n in "$PUBLIC_PAGES" "$EU_PAGES"; do [ "$n" -gt 2 ] && OVER=1; done
[ "$OVER" = 1 ] && echo "WARNING: a resume variant exceeds the 2-page target." >&2

if [ -n "${GITHUB_STEP_SUMMARY:-}" ]; then
  {
    echo "### Resume build"
    echo ""
    echo "| variant | pages | published |"
    echo "|---|---|---|"
    echo "| public | ${PUBLIC_PAGES} | yes — GitHub Pages |"
    echo "| EU | ${EU_PAGES} | no — download from this run's artifacts |"
    echo ""
    [ "$OVER" = 1 ] && echo "⚠️ A variant exceeds the 2-page target." || echo "✅ Both variants within the 2-page target."
  } >> "$GITHUB_STEP_SUMMARY"
fi

exit 0
