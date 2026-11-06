# nandzz tap

Homebrew tap for these macOS apps.

Before the first install, add the tap and trust it. Homebrew loads casks from a third-party tap only after you trust it:

```sh
brew tap nandzz/tap
```

```sh
brew trust nandzz/tap
```

| App | Description | Install |
|---|---|---|
| [Klat](https://github.com/nandzz/klat) | A local voice for AI coding agents, over MCP | `brew install --cask nandzz/tap/klat` |
| [Koment](https://github.com/nandzz/koment) | Leave inline notes on code and let Claude Code act on them | `brew install --cask nandzz/tap/koment` |
| [NextWord](https://github.com/nandzz/next-word) | Suggests the next word and rewrites text in any app | `brew install --cask nandzz/tap/nextword` |

To upgrade an app:

```sh
brew upgrade --cask nextword
```

To remove an app and everything it wrote:

```sh
brew uninstall --zap --cask nextword
```

If you tapped `nandzz/koment` before, it still works: GitHub redirects the old repository name to this one.
