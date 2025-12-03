cask "ccnexus" do
  version "3.3.1"
  
  # ARM64 版本
  if Hardware::CPU.arm?
    sha256 "654afb0af7ce69d26a728a4e355a6e29c613ea8b62999678b659731b49693ad9"
    url "https://github.com/lich0821/ccNexus/releases/download/v#{version}/ccNexus-v#{version}-darwin-arm64.zip"
  else
    # Intel 版本
    sha256 "99ded9ed06a1b5716d39124a52693e28b8cb7f8ba6263007c3ff07f0f4dcf30c"
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
