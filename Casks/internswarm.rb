cask "internswarm" do
  version "0.1.0"
  sha256 "1316406655a988490e4f6cef9b099dd5b18c2c3b85e367f43be87fff0f28e9cf"

  url "https://github.com/agenticfabriq/internswarm/releases/download/v#{version}/InternSwarm_#{version}_aarch64.dmg"
  name "InternSwarm"
  desc "Operator console for AI coding-agent sessions"
  homepage "https://github.com/agenticfabriq/internswarm"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "InternSwarm.app"

  zap trash: [
    "~/Library/Application Support/ai.internswarm.desktop",
    "~/Library/Caches/ai.internswarm.desktop",
    "~/Library/HTTPStorages/ai.internswarm.desktop",
    "~/Library/HTTPStorages/ai.internswarm.desktop.binarycookies",
    "~/Library/Preferences/ai.internswarm.desktop.plist",
    "~/Library/Saved Application State/ai.internswarm.desktop.savedState",
    "~/Library/WebKit/ai.internswarm.desktop",
  ]
end
