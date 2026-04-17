cask "stayawake" do
  version "0.1.0"
  sha256 "165e6e07408ec1a71d5475deb21b33e2a4e81696964f5344d0c7a33a7d45facf"

  url "https://github.com/amoswzw/stayawake/releases/download/v#{version}/stayawake-#{version}-macos.dmg"
  name "stayawake"
  desc "Menu-bar utility that prevents idle sleep during long-running work"
  homepage "https://github.com/amoswzw/stayawake"

  depends_on macos: ">= :ventura"

  app "stayawake.app"

  zap trash: "~/Library/Preferences/dev.stayawake.app.plist"
end
