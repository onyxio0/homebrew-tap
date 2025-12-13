cask "code-switch" do
  version "2.3.3"
  
  on_arm do
    sha256 "4d4727f1d99768109cf2333e92f5b9e15fb371c48a5b0dca72cd54f5a91ae9fe"
    url "https://github.com/Rogers-F/code-switch-R/releases/download/v#{version}/codeswitch-macos-arm64.zip"
  end
  
  on_intel do
    sha256 "931d13891da64c94072e16c83e899454473e89a9d59f00d51f3cf38baddb7bfa"
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
