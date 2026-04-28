cask "hushloom" do
  version "0.1.7"
  sha256 "11bd6d8253118fa9f5fe3d083283c766b4e71f9172aa48f57db0b89bfcaa2a6d"

  url "https://github.com/amoswzw/Hushloom/releases/download/v0.1.7/Hushloom-v0.1.7.dmg"
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
