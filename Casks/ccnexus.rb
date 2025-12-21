cask "ccnexus" do
  version "4.8.0"
  
  # ARM64 版本
  if Hardware::CPU.arm?
    sha256 "ea99fc8881775bf3e81f8d38fc82fec45a5053d6a23632ca8228c3f7a37c6b0d"
    url "https://github.com/lich0821/ccNexus/releases/download/v#{version}/ccNexus-v#{version}-darwin-arm64.zip"
  else
    # Intel 版本
    sha256 "7b4c8afeba3b13c6ccd25d9c386deac083b807d002045f95243de086591e475c"
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
