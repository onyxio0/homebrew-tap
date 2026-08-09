cask "ccnexus" do
  version "4.5.0"
  
  # ARM64 版本
  if Hardware::CPU.arm?
    sha256 "7f2bb652da6eee9a3559710189f9e53b3e7660933b5a7515662612243d47cea2"
    url "https://github.com/lich0821/ccNexus/releases/download/v#{version}/ccNexus-v#{version}-darwin-arm64.zip"
  else
    # Intel 版本
    sha256 "342eae9f90d7f6aee9d50d7a67e44a774760fc85ab19956fb77e072e72c52d55"
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
