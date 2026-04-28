cask "hushloom" do
  version "0.1.0"
  sha256 "27b3e75567a58f18db239ea3386a3e252f9dddcca9ebb1f1a2dce6f44f0b55fe"

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
