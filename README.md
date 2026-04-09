<img width="1698" height="1245" alt="image" src="https://github.com/user-attachments/assets/e0245795-4990-4d54-93fa-8788f47dc3cc" />

# Aphrodite Skin for Hermes Agent

A minimal public repository for the Aphrodite pink TUI skin.

Included:
- `docs/skins/aphrodite.yaml` — the skin file
- `scripts/install-aphrodite.sh` — one-line installer

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

## Notes

This repo intentionally contains only the distributable skin assets, not the full Hermes Agent source tree.
