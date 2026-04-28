cask "hushloom" do
  version "0.1.13"
  sha256 "49795fb59502becfc77aaad3b4747ad5925073eefc6187faf8678c1caf4ec867"

  url "https://github.com/amoswzw/Hushloom/releases/download/v0.1.13/Hushloom-v0.1.13.dmg"
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
