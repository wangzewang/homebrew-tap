cask "fluxtty" do
  version "1.0.7"

  on_arm do
    url "https://github.com/wangzewang/fluxtty/releases/download/v#{version}/fluxtty_#{version}_aarch64.dmg"
    sha256 "8ab5619b6cac0319cfb6ea55ce659dbd94d1ac6ebfed2967e7f0c01682deefe5"
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
