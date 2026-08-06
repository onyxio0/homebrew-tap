cask "ccnexus" do
  version "5.3.0"
  
  # ARM64 版本
  if Hardware::CPU.arm?
    sha256 "6676e82838e81e2545ec01c0afb82a8ab59e44d2053271360e02f9c231407d9b"
    url "https://github.com/lich0821/ccNexus/releases/download/v#{version}/ccNexus-v#{version}-darwin-arm64.zip"
  else
    # Intel 版本
    sha256 "8ddebd7078d3941921cdca914fcbb7df4b4173eecb3f69ded0a78db9acccefc8"
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
