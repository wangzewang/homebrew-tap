cask "hushloom" do
  version "0.1.10"
  sha256 "5d1c8c2309af86496abf314ad57bb1e845dd054d3b393e4d4dd218927e60e436"

  url "https://github.com/amoswzw/Hushloom/releases/download/v0.1.10/Hushloom-v0.1.10.dmg"
  name "Hushloom"
  desc "macOS menu bar app for focus sessions, ambient soundscapes, and lightweight task tracking"
  homepage "https://github.com/amoswzw/Hushloom"

  depends_on macos: ">= :ventura"

  app "Hushloom.app"

  zap trash: [
    "~/Library/Caches/com.amoswzw.hushloom",
    "~/Library/Preferences/com.amoswzw.hushloom.plist",
  ]
end
