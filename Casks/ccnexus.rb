cask "ccnexus" do
  version "4.8.2"
  
  # ARM64 版本
  if Hardware::CPU.arm?
    sha256 "bb588b0106f9e214bcf776c1c7ea487a78da21176eeee51edccfbd95ed4acc60"
    url "https://github.com/lich0821/ccNexus/releases/download/v#{version}/ccNexus-v#{version}-darwin-arm64.zip"
  else
    # Intel 版本
    sha256 "30875d232be9a5157c731515129d408d046fe0a8e73cea771ef0fd1448f2e99a"
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
