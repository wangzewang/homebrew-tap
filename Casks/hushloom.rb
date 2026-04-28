cask "hushloom" do
  version "0.1.4"
  sha256 "5bbec1be4539f438c518abbe3f3ab7fb7b595a83048b7a0acec76b5e8b631c2e"

  url "https://github.com/amoswzw/Hushloom/releases/download/v0.1.4/Hushloom-v0.1.4.dmg"
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
