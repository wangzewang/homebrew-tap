cask "hushloom" do
  version "0.1.3"
  sha256 "ceaf2acb22ad546beed6b7b868a07e63d3b682a66b9c670f87231c36a35b15cc"

  url "https://github.com/amoswzw/Hushloom/releases/download/v0.1.3/Hushloom-v0.1.3.dmg"
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
