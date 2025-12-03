cask "code-switch" do
  version "1.2.5"
  
  # ARM64 版本
  if Hardware::CPU.arm?
    sha256 "eeaabebc92dadc74297f2cdc94dc1a4915b2bd1621e3c4fad41c9fe292b47e11"
    url "https://github.com/onyxio0/code-switch/releases/download/v1.2.5/codeswitch-macos-arm64.zip"
  else
    # Intel 版本
    sha256 "e534480258788660684fb277a354d04217a303439480356b4d04438860ace653"
    url "https://github.com/onyxio0/code-switch/releases/download/v1.2.5/codeswitch-macos-amd64.zip"
  end

  name "Code Switch"
  desc "集中管理 Claude Code & Codex 供应商"
  homepage "https://github.com/onyxio0/code-switch"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "codeswitch.app"

  zap trash: [
    "~/Library/Application Support/codeswitch",
    "~/Library/Caches/codeswitch",
    "~/Library/Preferences/com.codeswitch.plist",
  ]
end
