#!/usr/bin/env bash
set -euo pipefail

echo "Enterprise AI Coding Skill"
echo "Documento principale: skills.md"
echo "Usa questa skill per prompt, review, sicurezza, governance e project finale."

if [[ -f "skills.md" ]]; then
  echo "skills.md: presente"
else
  echo "skills.md: assente" >&2
  exit 1
fi

echo "Controlli manuali richiesti:"
echo "- review umana"
echo "- test o verifiche tecniche"
echo "- assenza di credenziali, token e dati reali"
echo "- decisione finale motivata dallo sviluppatore"
