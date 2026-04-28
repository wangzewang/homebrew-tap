cask "hushloom" do
  version "0.1.12"
  sha256 "5f810646a2cd459aa523042495a56b78e5baa075690ff1d8eca154aa591f2eb0"

  url "https://github.com/amoswzw/Hushloom/releases/download/v0.1.12/Hushloom-v0.1.12.dmg"
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
