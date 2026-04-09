# Hermes code patch required for full Aphrodite effect

The YAML skin file is enough for the static panel colors and the non-streaming response panel.

However, the fully polished look shown in the screenshot also depends on a small Hermes CLI code patch:
- make streaming reply boxes use `response_border`
- render the streaming border with true-color ANSI instead of falling back to the old gold border path

## Files in this repo

- `docs/skins/aphrodite.yaml` — skin file
- `patches/hermes-streaming-response-border.patch` — patch for Hermes CLI

## Apply to Hermes Agent

From your Hermes source checkout:

```bash
git apply /path/to/hermes-streaming-response-border.patch
```

Or fetch it directly:

```bash
curl -fsSL https://raw.githubusercontent.com/oqpsk/hermes-skin-aphrodite/main/patches/hermes-streaming-response-border.patch -o /tmp/hermes-streaming-response-border.patch
git apply /tmp/hermes-streaming-response-border.patch
```

Then restart Hermes.

## Why this exists

Hermes originally hard-coded the streaming reply border to the legacy gold color. The skin YAML alone cannot override that path. This patch makes the streaming reply frame respect the skin's `response_border` color.
