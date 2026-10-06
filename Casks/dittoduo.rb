cask "dittoduo" do
  version "1.4.4"
  sha256 "096109d15f31d5443856e91415711b58f0dc2a08a8f4fa279697aa8e9f4f20b2"

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
