cask "ccnexus" do
  version "3.9.1"
  
  # ARM64 版本
  if Hardware::CPU.arm?
    sha256 "86bab775c5c310bbe8e8007fe59522f0d7411c31441e6c5d424e9ed58f160b64"
    url "https://github.com/lich0821/ccNexus/releases/download/v#{version}/ccNexus-v#{version}-darwin-arm64.zip"
  else
    # Intel 版本
    sha256 "2b491fdc72c262af18c46a97d01b92008b86f8b8319cec1c6b92cf254f08aa78"
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
