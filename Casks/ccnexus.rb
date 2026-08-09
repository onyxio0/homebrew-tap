cask "ccnexus" do
  version "4.8.4"
  
  # ARM64 版本
  if Hardware::CPU.arm?
    sha256 "e7c65ead5c75f34c159a31875e8d76c8bf01a9aed82bb0bdf85eb2777bd808fd"
    url "https://github.com/lich0821/ccNexus/releases/download/v#{version}/ccNexus-v#{version}-darwin-arm64.zip"
  else
    # Intel 版本
    sha256 "46252e8d78c6181a06f1a958c470834063e670afa4f67413a8bc628df151fabe"
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
