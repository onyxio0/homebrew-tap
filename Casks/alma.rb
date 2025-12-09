cask "alma" do
  version "0.0.46"
  
  # 请手动下载文件并计算 SHA256，然后替换下面的值
  # 计算方法: shasum -a 256 alma-0.0.46-mac-arm64.dmg
  sha256 "YOUR_SHA256_HERE"
  
  url "https://updates.alma.now/alma-#{version}-mac-arm64.dmg"
  name "Alma"
  desc "Application description here"
  homepage "https://alma.now/"  # 请确认正确的主页地址

  # 如果有 livecheck 功能，可以添加版本检查
  # livecheck do
  #   url "https://updates.alma.now/latest"
  #   strategy :page_match
  #   regex(/alma[._-]v?(\d+(?:\.\d+)+)-mac-arm64\.dmg/i)
  # end

  app "Alma.app"  # 请确认 .dmg 中的 .app 名称

  zap trash: [
    "~/Library/Application Support/Alma",
    "~/Library/Caches/Alma",
    "~/Library/Preferences/com.alma.plist",
    "~/Library/Saved Application State/com.alma.savedState",
  ]
end
