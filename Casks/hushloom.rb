cask "hushloom" do
  version "0.1.0"
  sha256 "6b4d8d33b1b3aafc8959b05abb95a2d51b8e13786812ba3cd2ef86b2c521954f"

  url "https://github.com/amoswzw/Hushloom/releases/download/v0.1.0/Hushloom-v0.1.0-macos-universal.zip"
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
