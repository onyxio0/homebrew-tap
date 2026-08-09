cask "ccnexus" do
  version "4.12.0"
  
  # ARM64 版本
  if Hardware::CPU.arm?
    sha256 "91657cc381b4e52af4127d1cc60c97a8ee41b3dcaa5c58a29376524cbfd99c4d"
    url "https://github.com/lich0821/ccNexus/releases/download/v#{version}/ccNexus-v#{version}-darwin-arm64.zip"
  else
    # Intel 版本
    sha256 "4649f06d84a26f6423bff4bdfe06dbc08727b3cb150602898dbd67dcbd9ad996"
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
