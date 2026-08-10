class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.6.19"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.19/webclaw-v0.6.19-aarch64-apple-darwin.tar.gz"
      sha256 "1ac08502f4772177718c5fb316a21b94cf2cefa8f9138d41713dd9e19aa6368a"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.19/webclaw-v0.6.19-x86_64-apple-darwin.tar.gz"
      sha256 "84135ecb3d914101046291c9617500223c072e8c3bc27ecdf8c82baaa0380648"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.19/webclaw-v0.6.19-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d161536b87049fff1586347c13cd1e28dc3b54c500912410b16d8f9916289dac"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.19/webclaw-v0.6.19-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f0591a22589a21a98b879f385fef21ffb8a690b238740448ec6b85a4063dffcc"
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
