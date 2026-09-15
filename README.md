# homebrew-acelink

Private Homebrew tap for [Ace Link](https://github.com/TommyLuco/acelink) — a macOS menu bar app for playing Ace Streams via Docker.

The official Homebrew cask was disabled on 2026-09-01 because the app is intentionally unsigned
(Apple does not permit P2P app signing). This private tap removes that restriction.

## First-time setup (one-time)

Trust and add the tap using SSH (required since the repo is private):

```sh
brew trust --tap tommyluco/acelink
brew tap TommyLuco/acelink git@github.com:TommyLuco/homebrew-acelink.git
```

## Install

```sh
brew install --cask --no-quarantine tommyluco/acelink/ace-link
```

The `--no-quarantine` flag prevents macOS from applying the Gatekeeper quarantine attribute
to the unsigned app, so it launches without any "cannot be opened" prompts.

## Upgrade

```sh
brew upgrade --cask --no-quarantine tommyluco/acelink/ace-link
```

## Requirements

- Docker Desktop must be running when you use Ace Link.
