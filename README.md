# homebrew-tap

Homebrew tap for IntentLab CLI tools.

## Install

```sh
brew install intentlab-ai/tap/tentrix-cli
```

Equivalent two-step form:

```sh
brew tap intentlab-ai/tap
brew install tentrix-cli
```

## Available formulae

| Formula | Description |
| --- | --- |
| [`tentrix-cli`](Formula/tentrix-cli.rb) | Tentrix coding agents CLI — bundles `tentrix-cli`, `agent-visor`, and the underlying `claude`, `codex`, `gemini` agents. |

## Upgrading

```sh
brew update
brew upgrade tentrix-cli
```

## Uninstalling

```sh
brew uninstall tentrix-cli
brew untap intentlab-ai/tap
```

## How releases land here

`tentrix-cli` releases are cut from
[`intentlab-ai/tentrix`](https://github.com/intentlab-ai/tentrix). Tagging
`vX.Y.Z` there builds platform bundles, publishes them to
`https://cli.intentlab.ai/tentrix-cli/releases/vX.Y.Z/`, and opens a PR in
this repo updating `Formula/tentrix-cli.rb`.
