class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.3.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.8/webclaw-v0.3.8-aarch64-apple-darwin.tar.gz"
      sha256 "e2cd80a1f1a5a92d60dfd15e668f1afe6997e69d7406095703164d5466ae51f5"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.8/webclaw-v0.3.8-x86_64-apple-darwin.tar.gz"
      sha256 "04ffe8a4af2500a67bdf30402f516fb499cb4ade69633ff296b63a785d0ab0b8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.8/webclaw-v0.3.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2380504b36c6dcebb1ef7ad62d0839487aa5d4bde1d4cfd507ffc6ecb0ac1b77"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.8/webclaw-v0.3.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fb0c60d2b6cbc68e9aff34488820518c09ba71428a93d27936e336d32e04105b"
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
