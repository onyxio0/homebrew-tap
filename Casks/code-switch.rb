cask "code-switch" do
  version "2.6.11"
  
  on_arm do
    sha256 "d6cd6c22939ae6f65d176cfc3ed55ebcb656dc888823ae3b02fdfbb7a41a23bd"
    url "https://github.com/Rogers-F/code-switch-R/releases/download/v#{version}/codeswitch-macos-arm64.zip"
  end
  
  on_intel do
    sha256 "7bfe40b29b9ff00ac18e5b51177e9f2e9f4613d8443046f583dfcb5d00f5d115"
    url "https://github.com/Rogers-F/code-switch-R/releases/download/v#{version}/codeswitch-macos-amd64.zip"
  end

  name "CodeSwitch"
  desc "Multi-vendor proxy and management tool for Claude Code & Codex"
  homepage "https://github.com/Rogers-F/code-switch-R"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "CodeSwitch.app"

  zap trash: [
    "~/Library/Application Support/CodeSwitch",
    "~/Library/Caches/CodeSwitch",
    "~/Library/Preferences/com.codeswitch.plist",
    "~/Library/Saved Application State/com.codeswitch.savedState",
  ]
end
