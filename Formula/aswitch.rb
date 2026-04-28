class Aswitch < Formula
  desc "Switch between AI agent CLI accounts (Claude Code, Codex, Gemini, opencode)"
  homepage "https://github.com/amoswzw/aswitch"
  url "https://github.com/amoswzw/aswitch/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "90d438e515088ce59bbd05e5dda802be294c0f1cb94fb901eb6a05a36e076726"
  license "MIT"
  head "https://github.com/amoswzw/aswitch.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/aswitch-cli")
  end

  test do
    assert_match "aswitch", shell_output("#{bin}/aswitch --version")
  end
end
