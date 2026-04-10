cask "fluxtty" do
  version "0.1.6"

  on_arm do
    url "https://github.com/wangzewang/fluxtty/releases/download/v#{version}/fluxtty_#{version}_aarch64.dmg"
    sha256 "255a6b47614fe08a7ce24ec8375fb24f5443d68f225fca4cf1ebee173954a8a2"
  end

  on_intel do
    url "https://github.com/wangzewang/fluxtty/releases/download/v#{version}/fluxtty_#{version}_x86_64.dmg"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  name "fluxtty"
  desc "Multi-session developer workspace terminal"
  homepage "https://github.com/wangzewang/fluxtty"

  app "fluxtty.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{appdir}/fluxtty.app"]
  end
end
