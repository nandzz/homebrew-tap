cask "klat" do
  version "0.1.0"
  sha256 "9280945a767f609f49e15523d7f6169de2686d817d60360cf6cd9f006fca741a"

  url "https://github.com/nandzz/klat/releases/download/v#{version}/Klat-#{version}-arm64.zip"
  name "Klat"
  desc "Local voice for AI coding agents over MCP"
  homepage "https://github.com/nandzz/klat"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Klat.app"

  uninstall quit: "com.nandzz.klat"

  zap trash: [
    "~/.claude/skills/klat",
    "~/.codex/skills/klat",
    "~/Library/Application Support/Klat",
    "~/Library/Caches/com.nandzz.klat",
    "~/Library/Logs/Klat",
    "~/Library/Preferences/com.nandzz.klat.plist",
    "~/Library/Saved Application State/com.nandzz.klat.savedState",
  ]

  caveats do
    <<~EOS
      Open Klat, click its menu bar icon and choose
        Install for Claude Code and Codex…
      Then start a new agent session.

      The first start downloads the voice model (about 100 MB).

      To unregister the voice server before you uninstall, run:
        claude mcp remove -s user klat
      and remove the [mcp_servers.klat] block from ~/.codex/config.toml.
    EOS
  end
end
