cask "stayawake" do
  version "0.1.1"
  sha256 "d483beaf8387d05e6164e51f1d5525aa56680d9fcc7a057fd22a7c2fbf055b75"

  url "https://github.com/amoswzw/stayawake/releases/download/v#{version}/stayawake-#{version}-macos.dmg"
  name "stayawake"
  desc "Menu-bar utility that prevents idle sleep during long-running work"
  homepage "https://github.com/amoswzw/stayawake"

  depends_on macos: ">= :ventura"

  app "stayawake.app"

  zap trash: "~/Library/Preferences/dev.stayawake.app.plist"
end
