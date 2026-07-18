class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.6.15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.15/webclaw-v0.6.15-aarch64-apple-darwin.tar.gz"
      sha256 "674f216a3b469670c899fa20aeee88cf5178ddf94e7964d3afa798b33368d3c2"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.15/webclaw-v0.6.15-x86_64-apple-darwin.tar.gz"
      sha256 "6bc1c0dbf3eb3241b5f9c0c331fb57ea29f22c1691d34534dfe3a610f2011fec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.15/webclaw-v0.6.15-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "18a3218076dfbd543880ef6a719e9ddc48298d7caba7039dadf3406aaa1d7c8c"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.15/webclaw-v0.6.15-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3e507c3ff311830a81eaa892916ca67c31033abbebf3295499e0775a7539807c"
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
