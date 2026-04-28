cask "hushloom" do
  version "0.1.0"
  sha256 "fa7a1074b0f60e03777df2855d3ff9b8052ce26e3d9cc64a212d94928a0b50c3"

  url "https://github.com/amoswzw/Hushloom/releases/download/v0.1.0/Hushloom-v0.1.0.dmg"
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
