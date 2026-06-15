class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.6.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.10/webclaw-v0.6.10-aarch64-apple-darwin.tar.gz"
      sha256 "16f656392480b78865491133a3373dae2b1715e9edd9e9301b09911c70ae7638"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.10/webclaw-v0.6.10-x86_64-apple-darwin.tar.gz"
      sha256 "e97db286c3894a05f81323cc4e6c83a73b5cc99fedb7e73f0d9517f31fe3a52a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.10/webclaw-v0.6.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1a0e097e730309786e1ef9ee4cb1bf21f30c308925924e937640376a1131cb5d"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.10/webclaw-v0.6.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ccb83cd826d2cad5529ee605c03b392f19657fd2c6d1d7e070e129a85d53ab0a"
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
