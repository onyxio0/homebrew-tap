cask "ccnexus" do
  version "4.7.1"
  
  # ARM64 版本
  if Hardware::CPU.arm?
    sha256 "a799fe3f18b51c54f5cd30ed88027b37f7952daa56672a39dfa13b8fec43db64"
    url "https://github.com/lich0821/ccNexus/releases/download/v#{version}/ccNexus-v#{version}-darwin-arm64.zip"
  else
    # Intel 版本
    sha256 "c86c4dfa0a68f98a829e5f96b29add45222d306597fb31a3a3983d7630629a4e"
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
