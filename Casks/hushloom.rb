cask "hushloom" do
  version "0.1.8"
  sha256 "52aee08e265c74c48d06081e3dda9bfd4f92f57e69034b09ecb0905c0b8fe9c2"

  url "https://github.com/amoswzw/Hushloom/releases/download/v0.1.8/Hushloom-v0.1.8.dmg"
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
