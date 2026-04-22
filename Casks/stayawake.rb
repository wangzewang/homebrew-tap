cask "stayawake" do
  version "0.1.2"
  sha256 "80a512570471e9135134c24c2b88eaf6372d30b8c61bcb44d3e0651de327ff78"

  url "https://github.com/amoswzw/stayawake/releases/download/v#{version}/stayawake-#{version}-macos.dmg"
  name "stayawake"
  desc "Menu-bar utility that prevents idle sleep during long-running work"
  homepage "https://github.com/amoswzw/stayawake"

  depends_on macos: ">= :ventura"

  app "stayawake.app"

  zap trash: "~/Library/Preferences/dev.stayawake.app.plist"
end
