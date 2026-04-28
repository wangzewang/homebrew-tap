cask "hushloom" do
  version "0.1.11"
  sha256 "6a8331e110b9ee84cadb257e2a234c13c2b9f1d423a1bfabdcb87df74adfb3b9"

  url "https://github.com/amoswzw/Hushloom/releases/download/v0.1.11/Hushloom-v0.1.11.dmg"
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
