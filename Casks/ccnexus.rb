cask "ccnexus" do
  version "4.9.1"
  
  # ARM64 版本
  if Hardware::CPU.arm?
    sha256 "2b79979b4f4a2bacf512f4304a8229379820a7505481129f907e8f2d8e5b2ceb"
    url "https://github.com/lich0821/ccNexus/releases/download/v#{version}/ccNexus-v#{version}-darwin-arm64.zip"
  else
    # Intel 版本
    sha256 "be72fa8c7912d895a00a6de36764e4a8be25eae6583b78d0b85d0c2dd9f709ba"
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
