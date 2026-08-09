cask "ccnexus" do
  version "4.1.3"
  
  # ARM64 版本
  if Hardware::CPU.arm?
    sha256 "f17d5dc3e646a84e331c1b621220cc1a39f33cd705a246d50e9f03098a0665fc"
    url "https://github.com/lich0821/ccNexus/releases/download/v#{version}/ccNexus-v#{version}-darwin-arm64.zip"
  else
    # Intel 版本
    sha256 "b699b2a9a75fa011e946cfa1d1c04d9325cbafc47013321eabfd38aa5c59f202"
    url "https://github.com/lich0821/ccNexus/releases/download/v#{version}/ccNexus-v#{version}-darwin-amd64.zip"
  end

  name "ccNexus"
  desc "Intelligent API gateway for Claude Code - rotate endpoints and monitor usage"
  homepage "https://github.com/lich0821/ccNexus"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ccNexus.app"

  zap trash: [
    "~/Library/Application Support/ccNexus",
    "~/Library/Caches/ccNexus",
    "~/Library/Preferences/com.ccNexus.plist",
  ]
end
