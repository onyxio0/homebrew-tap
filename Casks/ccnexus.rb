cask "ccnexus" do
  version "4.3.0"
  
  # ARM64 版本
  if Hardware::CPU.arm?
    sha256 "dbafaf3d75cf5007815b9fc9374782b198920acba1c17f36c301464d850054b0"
    url "https://github.com/lich0821/ccNexus/releases/download/v#{version}/ccNexus-v#{version}-darwin-arm64.zip"
  else
    # Intel 版本
    sha256 "042b525d903b8977eac9265f7b48bf23fa23429f80c1f39d66cab52fc9ea0322"
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
