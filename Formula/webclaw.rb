class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.0/webclaw-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "76ae27d019eb8fe3a35dfe68520b635feaa9ed988eb8cd8a146c35b4e005a0e8"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.0/webclaw-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "554753a78fa4261bf1baae045815e9781ae251fbcef404416a8040da048b08d3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.0/webclaw-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "20ed1b7c8fef8ad94bb6a85d7af375da6c4146a81746b92e871648ec246aa4f8"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.0/webclaw-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e27fe0ef1b578cd0c5a46585ae2d31758b05cdd048fbd829aab2e2a76d6950c5"
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
