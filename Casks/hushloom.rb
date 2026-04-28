cask "hushloom" do
  version "0.1.9"
  sha256 "87d54dbf21eb9c080d30d83115692988e16e5124382570a693e1967bcbe3a98e"

  url "https://github.com/amoswzw/Hushloom/releases/download/v0.1.9/Hushloom-v0.1.9.dmg"
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
