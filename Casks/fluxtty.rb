cask "fluxtty" do
  version "0.1.4"

  on_arm do
    url "https://github.com/wangzewang/fluxtty/releases/download/v#{version}/fluxtty_#{version}_aarch64.dmg"
    sha256 "73178cec8643f4dcd58b9b8daabfbe8dacdee8b02e6e96996cba439b1cc4bee3"
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
