cask "stayawake" do
  version "0.1.0"
  sha256 "fe10c54bc372084aec490ee63ec8805d854250af34c8106e89305333ce03d301"

  url "https://github.com/amoswzw/stayawake/releases/download/v#{version}/stayawake-#{version}-macos.dmg"
  name "stayawake"
  desc "Menu-bar utility that prevents idle sleep during long-running work"
  homepage "https://github.com/amoswzw/stayawake"

  depends_on macos: ">= :ventura"

  app "stayawake.app"

  zap trash: "~/Library/Preferences/dev.stayawake.app.plist"
end
