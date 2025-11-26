cask "code-switch" do
  version "0.1.0"
  
  # ARM64 版本
  if Hardware::CPU.arm?
    sha256 "c7b9965702fa5139fe97d28b32f1f0554002e9b347f35544d11b5fa854760c06"
    url "https://github.com/onyxio0/code-switch/releases/download/v0.1.0/codeswitch-macos-arm64.zip"
  else
    # Intel 版本
    sha256 "113c8bbcd64efbd446d0447ca5ee866bc05b55cfea25ffc0206b7a15db187f08"
    url "https://github.com/onyxio0/code-switch/releases/download/v0.1.0/codeswitch-macos-amd64.zip"
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
