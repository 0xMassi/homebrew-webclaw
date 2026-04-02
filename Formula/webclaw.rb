class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.3.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.6/webclaw-v0.3.6-aarch64-apple-darwin.tar.gz"
      sha256 "e9d6777a230d9e7950e173b3300f622bd7ba67641c9ec8347bfca2724421d27a"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.6/webclaw-v0.3.6-x86_64-apple-darwin.tar.gz"
      sha256 "e4fb1261fd32e114f6bf342de09760005fcbdaf6d8a12e405d7359841310a85f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.6/webclaw-v0.3.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "feb055957f4cd67734fe433a1d97a3fb09fd6beff69a2825acd24720903da0e4"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.6/webclaw-v0.3.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c6d08b716989faf27146bfe2b307e2a2b15a93a26fef399a8b97a757c4f991a4"
    end
  end

  def install
    bin.install "webclaw"
    bin.install "webclaw-mcp"
  end

  test do
    assert_match "webclaw", shell_output("#{bin}/webclaw --version")
  end
end
