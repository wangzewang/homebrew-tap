cask "hushloom" do
  version "0.1.6"
  sha256 "425d6e30ed1a7eb5442098e05c8a0ce1d7fbea1cc97d9b5896a55e598f6acd76"

  url "https://github.com/amoswzw/Hushloom/releases/download/v0.1.6/Hushloom-v0.1.6.dmg"
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
