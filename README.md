<img width="1698" height="1245" alt="image" src="https://github.com/user-attachments/assets/e0245795-4990-4d54-93fa-8788f47dc3cc" />

# Aphrodite Skin for Hermes Agent

A minimal public repository for the Aphrodite pink TUI skin.

Included:
- `docs/skins/aphrodite.yaml` — the skin file
- `scripts/install-aphrodite.sh` — one-line installer
- `patches/hermes-streaming-response-border.patch` — optional Hermes CLI patch for the full streaming cyan reply border effect
- `docs/hermes-patch.md` — patch instructions

## Install

```bash
curl -fsSL https://raw.githubusercontent.com/oqpsk/hermes-skin-aphrodite/main/scripts/install-aphrodite.sh | bash
```

Then start Hermes and run:

```text
/skin aphrodite
```

Or set this in `~/.hermes/config.yaml`:

```yaml
display:
  skin: aphrodite
```

## Manual Install

```bash
mkdir -p ~/.hermes/skins
curl -fsSL https://raw.githubusercontent.com/oqpsk/hermes-skin-aphrodite/main/docs/skins/aphrodite.yaml -o ~/.hermes/skins/aphrodite.yaml
```

## Optional Hermes code patch

If you want the screenshot-perfect streaming reply border effect, also apply the optional Hermes patch:

```bash
curl -fsSL https://raw.githubusercontent.com/oqpsk/hermes-skin-aphrodite/main/patches/hermes-streaming-response-border.patch -o /tmp/hermes-streaming-response-border.patch
cd /path/to/hermes-agent
git apply /tmp/hermes-streaming-response-border.patch
```

Then restart Hermes.

More detail: `docs/hermes-patch.md`

## Notes

This repo intentionally contains only the distributable skin assets, not the full Hermes Agent source tree.
