# 🍺 Miragon Homebrew Tap

**Miragon's BPMN and Camunda 7 tools on your machine with one command, and kept up to date.**

The [Homebrew tap](https://docs.brew.sh/Taps) of [Miragon](https://miragon.io): all you need is [Homebrew](https://brew.sh).

## What's on tap

The three CLIs run on macOS and Linux; the desktop modeler needs a Mac with Apple silicon.

| Tool | What it does | Run it as | Install |
|------|--------------|-----------|---------|
| [`bpmn-cli`](https://miragon.github.io/bpmn-cli/) | Edits, lays out and lints BPMN 2.0 models without touching XML, by hand or through your AI agent | `bpmn` | `brew install miragon/tap/bpmn-cli` |
| [`bpmn-to-code`](https://miragon.github.io/bpmn-to-code/) | Generates type-safe APIs for Kotlin, Java, C# and TypeScript from BPMN models and validates the models | `bpmn-to-code` | `brew install miragon/tap/bpmn-to-code` |
| [`pulse-cli`](https://miragon.github.io/pulse/cli/) (formerly `operate`) | Operates Camunda 7 and its forks Operaton and CIB seven over their REST API, from your terminal or your AI agent | `pulse` | `brew install miragon/tap/pulse-cli` |
| [`miragon-bpmn-modeler`](https://miragon.github.io/bpmn-modeler/) | Desktop app for modelling BPMN and DMN | Miragon BPMN Modeler app | `brew install --cask miragon/tap/miragon-bpmn-modeler` |

## Install

The full name `miragon/tap/<tool>` adds the tap for you. Then check that the tool runs:

```bash
brew install miragon/tap/bpmn-cli
bpmn --help
```

## Keeping it fresh

Nobody likes a flat beer. Upgrade one tool, or everything Homebrew manages:

```bash
brew upgrade <tool>
brew update && brew upgrade
```

`bpmn-cli` and `pulse-cli` are still 0.x, so a minor release can change a command: `brew pin <tool>` holds one at its version.

Coming from `operate`? `brew upgrade` moves you to `pulse-cli`, and you call `pulse` from then on. The [0.25.0 release notes](https://github.com/Miragon/pulse/releases/tag/v0.25.0) list the settings to rename.

## Had enough?

No hard feelings. Uninstall every tool from the tap, then the tap itself:

```bash
brew uninstall <tool>
brew untap miragon/tap
```

## Help and feedback

- **A tool misbehaves:** open an issue in its repository, linked from its docs in the table above.
- **An install or upgrade fails:** [open an issue here](https://github.com/Miragon/homebrew-tap/issues).

## Contributing

Each tool's release pipeline updates its formula or cask here automatically, so please don't edit them by hand: the robots will overwrite you.

---

🍻 Cheers, and may your builds be green and your brews be cold.
