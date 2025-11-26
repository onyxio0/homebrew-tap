cask "code-switch" do
  version "0.1.0"
  
  # ARM64 版本
  if Hardware::CPU.arm?
    sha256 "PLACEHOLDER_ARM64_SHA256"
    url "https://github.com/onyxio0/code-switch/releases/download/v#{version}/codeswitch-macos-arm64.zip"
  else
    # Intel 版本
    sha256 "PLACEHOLDER_AMD64_SHA256"
    url "https://github.com/onyxio0/code-switch/releases/download/v#{version}/codeswitch-macos-amd64.zip"
  end

  name "Code Switch"
  desc "集中管理 Claude Code & Codex 供应商"
  homepage "https://github.com/onyxio0/code-switch"

  livecheck do
    url :url
    strategy :github_latest
  end

  # 根据 release.yml 中的构建流程，应该是 codeswitch.app 或 CodeSwitch.app
  # 等 release 构建完成后可以确认确切名称
  app "codeswitch.app"

  zap trash: [
    "~/Library/Application Support/codeswitch",
    "~/Library/Caches/codeswitch",
    "~/Library/Preferences/com.codeswitch.plist",
  ]
end
