cask "code-switch" do
  version "1.2.5"
  
  # ARM64 版本
  if Hardware::CPU.arm?
    sha256 "f625b9dc5ec7e68b7689937239c636cc577c124441ebe973620e2f4b190bf69b"
    url "https://github.com/onyxio0/code-switch/releases/download/v1.2.5/codeswitch-macos-arm64.zip"
  else
    # Intel 版本
    sha256 "442ebaf62a80ab84d65ba2d834a531f2c54311a5c7a936207994183c69b45ee0"
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
