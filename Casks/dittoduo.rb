cask "dittoduo" do
  version "1.6.0"
  sha256 "21c7521dbe30d461c647888978f9a786d80fecac1a438013517abcc6e50143d0"

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
