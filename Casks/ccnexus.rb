cask "ccnexus" do
  version "4.10.2"
  
  # ARM64 版本
  if Hardware::CPU.arm?
    sha256 "d4eb79b7effcc68dc724800b6004703efdc495225c7465d0b4c29ce55eb8aef2"
    url "https://github.com/lich0821/ccNexus/releases/download/v#{version}/ccNexus-v#{version}-darwin-arm64.zip"
  else
    # Intel 版本
    sha256 "b76d04dba7b3a3972c1140fa816f3b153ee1e077bae80ededbce5489b875eb37"
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
