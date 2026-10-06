cask "dittoduo" do
  version "1.4.3"
  sha256 "89f9fe731345ac8aa8f6adb5538ba82d706f6f4aed9d3d0fcd3158f1f0bb2290"

  url "https://github.com/bgfaulk/dittoduo-releases/releases/download/v#{version}/DittoDuo-#{version}.dmg"
  name "DittoDuo"
  desc "Clipboard history manager with optional AI assistant access"
  homepage "https://dittoduo.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "DittoDuo.app"

  uninstall quit: "com.501coding.dittoduo"

  zap trash: [
    "~/Library/Application Support/DittoDuo",
    "~/Library/Preferences/com.501coding.dittoduo.plist",
    "~/Library/Saved Application State/com.501coding.dittoduo.savedState",
  ]
end
