cask "dittoduo" do
  version "1.5.1"
  sha256 "77a0dbd8f085eef4c58334b403806d1903b50463fdb803b3b25d90977817c748"

  url "https://github.com/bgfaulk/dittoduo-releases/releases/download/v#{version}/DittoDuo-#{version}.dmg"
  name "DittoDuo"
  desc "Clipboard history manager with optional AI assistant access"
  homepage "https://dittoduo.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "DittoDuo.app"

  uninstall quit: "com.501coding.dittoduo"

  zap trash: [
    "~/Library/Application Support/DittoDuo",
    "~/Library/Preferences/com.501coding.dittoduo.plist",
    "~/Library/Saved Application State/com.501coding.dittoduo.savedState",
  ]
end
