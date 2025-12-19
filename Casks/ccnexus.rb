cask "ccnexus" do
  version "4.7.0"
  
  # ARM64 版本
  if Hardware::CPU.arm?
    sha256 "bc4282f8433242b90084444e07839aac6d8452248d4752a71097dace52e8134a"
    url "https://github.com/lich0821/ccNexus/releases/download/v#{version}/ccNexus-v#{version}-darwin-arm64.zip"
  else
    # Intel 版本
    sha256 "6c9e2888e53f10569e1c954dc359fb469c801b019d4ef113a38e000f343e3d97"
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
