cask "hushloom" do
  version "0.1.5"
  sha256 "ca260cd8dfdef90be34c85beab9e713a9d59ab155c3d27ae855e7c65c61cdc6a"

  url "https://github.com/amoswzw/Hushloom/releases/download/v0.1.5/Hushloom-v0.1.5.dmg"
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
