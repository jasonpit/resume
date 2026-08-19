#!/usr/bin/env bash
# Build the resume site into _site/.
# Requires: pandoc, python3 + weasyprint.
set -euo pipefail

cd "$(dirname "$0")"

OUT=_site
rm -rf "$OUT"
mkdir -p "$OUT"

cp assets/resume.css "$OUT/resume.css"

pandoc resume.md \
  --from markdown+smart \
  --to html5 \
  --template templates/page.html \
  --metadata title="Jason Pittman — Cloud Security Architect" \
  --metadata description="Cloud Security Architect at Warner Bros. Discovery. AI and agentic security at enterprise scale, multi-cloud governance." \
  --metadata isresume=true \
  -o "$OUT/index.html"

pandoc skills.md \
  --from markdown+smart \
  --to html5 \
  --template templates/page.html \
  --metadata title="Jason Pittman — Technology Index" \
  --metadata description="Full inventory of the platforms, tools, and technologies I have worked with." \
  -o "$OUT/skills.html"

# Render the PDF and report how many pages it actually came out to.
# Set PYTHON=/path/to/venv/bin/python if weasyprint lives in a virtualenv.
"${PYTHON:-python3}" - <<'PY'
from weasyprint import HTML

doc = HTML("_site/index.html").render()
doc.write_pdf("_site/Jason_Pittman_Resume.pdf")
with open("_site/.pagecount", "w") as fh:
    fh.write(str(len(doc.pages)))
PY

PAGES=$(cat "$OUT/.pagecount")
rm -f "$OUT/.pagecount"

echo "Built $OUT — resume PDF is ${PAGES} page(s)."
if [ "$PAGES" -gt 2 ]; then
  echo "WARNING: resume is ${PAGES} pages; the target is 2." >&2
fi

# Expose the count to CI if we're running there.
if [ -n "${GITHUB_STEP_SUMMARY:-}" ]; then
  {
    echo "### Resume build"
    echo ""
    if [ "$PAGES" -gt 2 ]; then
      echo "⚠️ **PDF is ${PAGES} pages** — target is 2. Trim \`resume.md\` or tighten print CSS."
    else
      echo "✅ **PDF is ${PAGES} page(s)** — within the 2-page target."
    fi
  } >> "$GITHUB_STEP_SUMMARY"
fi
