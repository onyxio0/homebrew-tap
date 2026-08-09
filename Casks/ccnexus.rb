cask "ccnexus" do
  version "4.2.2"
  
  # ARM64 版本
  if Hardware::CPU.arm?
    sha256 "3b72206143ccfff3f02a1938a9b26ed36dd6a5a0e3ce064773c055e34bd6c85f"
    url "https://github.com/lich0821/ccNexus/releases/download/v#{version}/ccNexus-v#{version}-darwin-arm64.zip"
  else
    # Intel 版本
    sha256 "b3df26d3ffa6f9068ec276c9c3731a70e9ac9e6e4cf305f13035ad7494fc52eb"
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
