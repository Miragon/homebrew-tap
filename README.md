# Miragon Homebrew Tap

[![Update Homebrew Tap](https://github.com/Miragon/bpmn-modeler/actions/workflows/publish-standalone-homebrew.yml/badge.svg)](https://github.com/Miragon/bpmn-modeler/actions/workflows/publish-standalone-homebrew.yml)

The official [Homebrew](https://brew.sh) tap for Miragon tools.

> **Note:** This repository is updated automatically by CI on every release.
> Do not edit it manually.

## What is Homebrew?

[Homebrew](https://brew.sh) is the missing package manager for macOS.
Install it with:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## What is a Tap?

A [tap](https://docs.brew.sh/Taps) is a third-party Homebrew repository.
Adding this tap makes Miragon packages available to `brew`.

## Installation

```bash
brew tap miragon/tap
brew install --cask miragon-bpmn-modeler
```

## Available Casks

| Cask | Description | Install |
|------|-------------|---------|
| `miragon-bpmn-modeler` | Standalone BPMN/DMN process modeler | `brew install --cask miragon-bpmn-modeler` |

## Upgrade

```bash
brew upgrade --cask miragon-bpmn-modeler
```

## More Information

- [Miragon BPMN Modeler](https://github.com/Miragon/bpmn-modeler)
- [Release Notes](https://github.com/Miragon/bpmn-modeler/releases)
