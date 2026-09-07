#!/usr/bin/env bash
# Convertit un fichier HTML en PDF via Chrome headless.
#
# Usage : scripts/render_pdf.sh <fichier.html> <fichier.pdf>
#
# Utilisé par les commandes /pea-coach, /pea-plan et /portfolio-audit pour
# exporter leur résultat en PDF dans le répertoire infos/.
set -euo pipefail

if [ $# -ne 2 ]; then
  echo "Usage: $0 <input.html> <output.pdf>" >&2
  exit 1
fi

INPUT_HTML="$1"
OUTPUT_PDF="$2"

if [ ! -f "$INPUT_HTML" ]; then
  echo "Fichier HTML introuvable : $INPUT_HTML" >&2
  exit 1
fi

INPUT_HTML_ABS="$(cd "$(dirname "$INPUT_HTML")" && pwd)/$(basename "$INPUT_HTML")"
mkdir -p "$(dirname "$OUTPUT_PDF")"

CHROME_BIN="$(command -v google-chrome || command -v chromium || command -v chromium-browser || true)"
if [ -z "$CHROME_BIN" ]; then
  echo "Aucun binaire Chrome/Chromium trouvé pour générer le PDF." >&2
  exit 1
fi

"$CHROME_BIN" \
  --headless \
  --disable-gpu \
  --no-sandbox \
  --no-pdf-header-footer \
  --print-to-pdf="$OUTPUT_PDF" \
  "file://$INPUT_HTML_ABS" >/dev/null 2>&1

echo "PDF généré : $OUTPUT_PDF"
