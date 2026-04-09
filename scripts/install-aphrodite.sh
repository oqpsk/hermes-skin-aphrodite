#!/usr/bin/env bash
set -euo pipefail

SKIN_NAME="aphrodite"
REPO_RAW_BASE="https://raw.githubusercontent.com/oqpsk/hermes-skin-aphrodite/main"
TARGET_DIR="${HOME}/.hermes/skins"
TARGET_FILE="${TARGET_DIR}/${SKIN_NAME}.yaml"
SOURCE_URL="${REPO_RAW_BASE}/docs/skins/${SKIN_NAME}.yaml"

mkdir -p "${TARGET_DIR}"

if command -v curl >/dev/null 2>&1; then
  curl -fsSL "${SOURCE_URL}" -o "${TARGET_FILE}"
elif command -v wget >/dev/null 2>&1; then
  wget -qO "${TARGET_FILE}" "${SOURCE_URL}"
else
  echo "Error: curl or wget is required." >&2
  exit 1
fi

cat <<EOF
Installed ${SKIN_NAME} skin to:
  ${TARGET_FILE}

Next steps:
  1. Start Hermes: hermes
  2. Run: /skin ${SKIN_NAME}

Or set this in ~/.hermes/config.yaml:
  display:
    skin: ${SKIN_NAME}
EOF
