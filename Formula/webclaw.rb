class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.6.21"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.21/webclaw-v0.6.21-aarch64-apple-darwin.tar.gz"
      sha256 "c1098823d9191c8b5e490767c8eb2c41d38b9ef11d62c2b18be6dc7235676661"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.21/webclaw-v0.6.21-x86_64-apple-darwin.tar.gz"
      sha256 "1eb187e94ae9a497df1cd3e32a87705c7281d252acde0120b9b886d8fae9c3cc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.21/webclaw-v0.6.21-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e58ccd6c7921deaa8fa22bc952f47e9bc49b05e898b4ed894c50f53f2e763cb9"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.21/webclaw-v0.6.21-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1b5e95d1bdc8527958b57ff158bb57104a3013a7f112b2a080e9ab13a76121d7"
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
