cask "code-switch" do
  version "2.6.12"
  
  on_arm do
    sha256 "8bda24a72487a576389699e788e37cf9a803b5f9ba2a52f27963cb65d9285a10"
    url "https://github.com/Rogers-F/code-switch-R/releases/download/v#{version}/codeswitch-macos-arm64.zip"
  end
  
  on_intel do
    sha256 "c092c850b58d675b43d026ff4e471f3f40c7bedf185e0aee4041f2ce0282ccbf"
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
