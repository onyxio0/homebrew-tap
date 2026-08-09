cask "ccnexus" do
  version "4.11.1"
  
  # ARM64 版本
  if Hardware::CPU.arm?
    sha256 "115545801124d9e5bfe39ad99287e81516cd5fd05f606622bdd0ab3667d10c95"
    url "https://github.com/lich0821/ccNexus/releases/download/v#{version}/ccNexus-v#{version}-darwin-arm64.zip"
  else
    # Intel 版本
    sha256 "eac2114c614c15f3ea1eaa2b846b73f9b158e10e75bc8ec29e65d63146efa285"
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
