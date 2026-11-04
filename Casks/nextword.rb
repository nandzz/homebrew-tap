cask "nextword" do
  version "1.0.0"
  sha256 "4c6850a205a1169f30a0b0dc5446cb6b639e4e9f83121058dd394a8ac4dcf9e5"

  url "https://github.com/nandzz/next-word/releases/download/v#{version}/NextWord-#{version}.zip"
  name "NextWord"
  desc "Menu bar app that suggests the next word and rewrites text in any app"
  homepage "https://github.com/nandzz/next-word"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "NextWord.app"

  zap trash: [
    "~/Library/Caches/com.nandzz.nextword",
    "~/Library/HTTPStorages/com.nandzz.nextword",
    "~/Library/Logs/NextWord",
    "~/Library/Preferences/com.nandzz.nextword.plist",
    "~/Library/Saved Application State/com.nandzz.nextword.savedState",
  ]

  caveats do
    <<~EOS
      Open NextWord and give it access in
        System Settings → Privacy & Security → Accessibility.

      The on-device engine needs macOS 26 with Apple Intelligence turned on.
      For the Claude engine, install and log in to Claude Code:
        brew install --cask claude-code
      For the Codex engine, install the Codex CLI and run `codex login`.
    EOS
  end
end
