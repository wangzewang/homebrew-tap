cask "hushloom" do
  version "0.1.14"
  sha256 "80c582b69953d8647e1c0b9d183963f5e076c07e8019157ed0c9e98f5651fb8e"

  url "https://github.com/amoswzw/Hushloom/releases/download/v0.1.14/Hushloom-v0.1.14.dmg"
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
