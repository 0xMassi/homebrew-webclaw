class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.6.18"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.18/webclaw-v0.6.18-aarch64-apple-darwin.tar.gz"
      sha256 "faff6ebdfccdef6b434c52e62c691aa56c4d52c4d58beff428e6edebeb5b0e1d"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.18/webclaw-v0.6.18-x86_64-apple-darwin.tar.gz"
      sha256 "d3e5791e14ed37b582fd3192f31a9e180e10b7b23c8c9726c2ae19392bdb8b1b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.18/webclaw-v0.6.18-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c2055767dbe76c529c3b377d8b50a909fd01aab0a0e3be9d2a0c3db71ccbfb64"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.18/webclaw-v0.6.18-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "31b2878c011bdc75dcfb285c3803916956ae40292f9264d3ec949fd29e3c0b75"
    end
  end

  def install
    bin.install "webclaw"
    bin.install "webclaw-mcp"
    bin.install "webclaw-server"
  end

  test do
    assert_match "webclaw", shell_output("#{bin}/webclaw --version")
  end
end
