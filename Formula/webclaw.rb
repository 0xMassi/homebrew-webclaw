class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.6.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.6/webclaw-v0.6.6-aarch64-apple-darwin.tar.gz"
      sha256 "0c4cfef1ff85c246025535d0b16bd6e57d7488a28d3833d9f4205838a9f25986"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.6/webclaw-v0.6.6-x86_64-apple-darwin.tar.gz"
      sha256 "8e14c33d97f8e7e0f95ffbc3c0c88dbca2a28585fa0b6ed6e7f23d5f12c3fc21"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.6/webclaw-v0.6.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "be4f05bd0942cb568b05ddee3c8f37886c5fd57a0627087141a5aeb2d701dea5"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.6/webclaw-v0.6.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8f2d4fa4d6ab2aaca70441571b3d6919fdd577aaf083e293e2f98e57e6d8059f"
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
