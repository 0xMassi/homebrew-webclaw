class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.6.23"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.23/webclaw-v0.6.23-aarch64-apple-darwin.tar.gz"
      sha256 "9085efc94d5c030f3c2208ec1ef965a88e82e6be7768c4a24bf3da78c76771d7"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.23/webclaw-v0.6.23-x86_64-apple-darwin.tar.gz"
      sha256 "f0ac5e19ad0583c42383bc7b2bfc9d3433434de3523862e38aad1c828ebb3880"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.23/webclaw-v0.6.23-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3a4c767824930a3b0a71135095dc24b942143616266771a62affd068f63038e4"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.23/webclaw-v0.6.23-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5717a050948ef9e9ca5755585bc163ed1d95750cc7513071baa850bb5a9c5f71"
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
