cask "code-switch" do
  version "2.1.1"
  
  on_arm do
    sha256 "1a54a9d1608b59ad2c9ca843f67062252775f31e5da3aa417aa59cf0e9b65aaa"
    url "https://github.com/Rogers-F/code-switch-R/releases/download/v#{version}/codeswitch-macos-arm64.zip"
  end
  
  on_intel do
    sha256 "532d1ebf3e714fb1c8aa7b8e277c4ce9e1de68c5ddd417a1f16f5bc84545246d"
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
