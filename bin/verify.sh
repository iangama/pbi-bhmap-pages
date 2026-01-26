#!/usr/bin/env bash
set -euo pipefail
ZIP="dist/pbi-bhmap-pages.zip"
test -f "$ZIP" || { echo "ERRO: $ZIP não existe"; exit 1; }

SIZE=$(stat -c%s "$ZIP")
echo "zip_size_bytes=$SIZE"
if [ "$SIZE" -lt 8000 ]; then
  echo "ERRO: ZIP pequeno demais (<8KB). Provável zip vazio/errado."
  exit 1
fi

echo "Conteúdo:"
unzip -l "$ZIP" | sed -n '1,80p'
unzip -l "$ZIP" | grep -q "index.html" || { echo "ERRO: faltou index.html"; exit 1; }
unzip -l "$ZIP" | grep -q "README.md" || { echo "ERRO: faltou README.md"; exit 1; }

echo "OK: ZIP parece correto."
