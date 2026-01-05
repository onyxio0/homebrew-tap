cask "ccnexus" do
  version "4.10.0"
  
  # ARM64 版本
  if Hardware::CPU.arm?
    sha256 "e8d82d33bb7616ecc9f517dd725451c72ea69f935b8de3ac32c9499e1d7193d9"
    url "https://github.com/lich0821/ccNexus/releases/download/v#{version}/ccNexus-v#{version}-darwin-arm64.zip"
  else
    # Intel 版本
    sha256 "c26a3e0a30c2c480f2dc0b997958d67fe91aa671ab4384c546c1525e5730ea79"
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
