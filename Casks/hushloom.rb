cask "hushloom" do
  version "0.1.2"
  sha256 "f8e930fdbbb3d33201c7faa150ec128ec6295e624fd2ec2188363d79c132ab0a"

  url "https://github.com/amoswzw/Hushloom/releases/download/v0.1.2/Hushloom-v0.1.2-macos-universal.zip"
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
