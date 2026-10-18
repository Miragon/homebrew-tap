# 🍺 Miragon Homebrew Tap

Freshly brewed tools for modelling, automation and everything in between from [Miragon](https://miragon.io), served straight to your terminal.
No gateways, no approvals, no lengthy setup. Just `brew install`.

## Quick start

```bash
brew tap miragon/tap
brew install miragon/tap/<name>
```

Don't have Homebrew yet? Grab it at [brew.sh](https://brew.sh). It's the missing package manager for macOS (and Linux).
A [tap](https://docs.brew.sh/Taps) is simply a third-party Homebrew repository, and this one is ours.

## What's on tap

| Name | Type | What it does | Install |
|------|------|--------------|---------|
| [`bpmn-cli`](https://github.com/Miragon/bpmn-cli) | Formula | AI-friendly CLI for editing BPMN 2.0 models semantically | `brew install miragon/tap/bpmn-cli` |
| [`bpmn-to-code`](https://github.com/Miragon/bpmn-to-code) | Formula | Generates type-safe APIs from BPMN process models and validates them | `brew install miragon/tap/bpmn-to-code` |
| [`operate`](https://github.com/Miragon/operate) | Formula | AI-first CLI for the Camunda 7 REST API (Operaton, CIB seven, Camunda 7), standalone without Node.js | `brew install miragon/tap/operate` |
| [`miragon-bpmn-modeler`](https://github.com/Miragon/bpmn-modeler) | Cask | Standalone BPMN/DMN process modeler | `brew install --cask miragon/tap/miragon-bpmn-modeler` |

## Keeping it fresh

Nobody likes a flat beer:

```bash
brew update && brew upgrade
```

## Had enough?

No hard feelings:

```bash
brew uninstall <name>
brew untap miragon/tap
```

## How this tap works

Every formula and cask is bumped automatically by the release pipeline of its project.
Please don't edit files here by hand. The robots will overwrite you.

Found a bug or have a wish? Open an issue in the respective project repository linked above.

---

🍻 Cheers, and may your builds be green and your brews be cold.
