#!/usr/bin/env bash
# Package the skill folder as an installable .skill file.
#
# Usage: ./build.sh
# Output: dist/neurodiversity-design.skill

set -euo pipefail

SKILL_DIR="neurodiversity-design"
OUT_DIR="dist"
OUT_FILE="${OUT_DIR}/${SKILL_DIR}.skill"

cd "$(dirname "$0")"

if [ ! -f "${SKILL_DIR}/SKILL.md" ]; then
  echo "error: ${SKILL_DIR}/SKILL.md not found. Run this from the repo root." >&2
  exit 1
fi

# Fail early if the frontmatter is missing or malformed.
if ! head -1 "${SKILL_DIR}/SKILL.md" | grep -q '^---$'; then
  echo "error: ${SKILL_DIR}/SKILL.md is missing YAML frontmatter." >&2
  exit 1
fi

for key in name description; do
  if ! grep -q "^${key}:" "${SKILL_DIR}/SKILL.md"; then
    echo "error: ${SKILL_DIR}/SKILL.md frontmatter is missing '${key}'." >&2
    exit 1
  fi
done

# Warn if any reference file linked from SKILL.md is missing.
missing=0
while read -r ref; do
  if [ ! -f "${SKILL_DIR}/${ref}" ]; then
    echo "warning: SKILL.md links to ${ref}, which does not exist." >&2
    missing=1
  fi
done < <(grep -o 'references/[a-z0-9-]*\.md' "${SKILL_DIR}/SKILL.md" | sort -u)

mkdir -p "${OUT_DIR}"
rm -f "${OUT_FILE}"

zip -rq "${OUT_FILE}" "${SKILL_DIR}" \
  -x '*.DS_Store' -x '*/.git/*' -x '__MACOSX/*'

echo "built ${OUT_FILE} ($(du -h "${OUT_FILE}" | cut -f1))"
unzip -l "${OUT_FILE}" | tail -n +4 | head -n -2

if [ "$missing" -eq 1 ]; then
  echo
  echo "built with warnings — see above." >&2
fi

cat <<'EOF'

To install:
  Claude desktop app  ->  Settings > Capabilities > add the .skill file
  Claude Code         ->  cp -r neurodiversity-design ~/.claude/skills/
EOF
