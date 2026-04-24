cask "fluxtty" do
  version "0.1.21"

  on_arm do
    url "https://github.com/amoswzw/fluxtty/releases/download/v#{version}/fluxtty_#{version}_aarch64.dmg"
    sha256 "0653dc48cf428a7bf9f2e3e8a7ab107a0ba17296afab9502c9875d3b2bff5781"
  end

  on_intel do
    url "https://github.com/amoswzw/fluxtty/releases/download/v#{version}/fluxtty_#{version}_x86_64.dmg"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  name "fluxtty"
  desc "Multi-session developer workspace terminal"
  homepage "https://github.com/amoswzw/fluxtty"

  app "fluxtty.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{appdir}/fluxtty.app"]
  end
end
