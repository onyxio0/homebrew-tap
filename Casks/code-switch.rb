cask "code-switch" do
  version "2.3.2"
  
  on_arm do
    sha256 "d6402fea1f7baddd20adc4e6ac3405063e337f302f55b489f05dc77e648f050f"
    url "https://github.com/Rogers-F/code-switch-R/releases/download/v#{version}/codeswitch-macos-arm64.zip"
  end
  
  on_intel do
    sha256 "82f6414827b7a5a20e4a69bd66e9d5addbe09ac5a2bb1b500a58d64fbb5b3c09"
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
