cask "dittoduo" do
  version "1.5.0"
  sha256 "052cffab4e15857693ff2611214e5a2427d44d5942b3dbc6243723f6735c551a"

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
