# homebrew-acelink

Private Homebrew tap for [Ace Link](https://github.com/TommyLuco/acelink) — a macOS menu bar app for playing Ace Streams via Docker.

The official Homebrew cask was disabled on 2026-09-01 because the app is intentionally unsigned
(Apple does not permit P2P app signing). This tap removes that restriction and strips the
quarantine attribute automatically so the app launches without Gatekeeper prompts.

## Install

```sh
brew tap TommyLuco/acelink
brew install --cask ace-link
```

## Requirements

- [Docker Desktop](https://www.docker.com/products/docker-desktop/) must be running when you use Ace Link.
