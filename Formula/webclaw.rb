class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.6.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.11/webclaw-v0.6.11-aarch64-apple-darwin.tar.gz"
      sha256 "865e5924bc94ed954f3794405552884df8c23346f92ad62cfaf83fbcc458cf04"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.11/webclaw-v0.6.11-x86_64-apple-darwin.tar.gz"
      sha256 "3a7335bdb4571f07bf25455d5488c7048f9a5390c9103d45d778e4dc3a6a86da"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.11/webclaw-v0.6.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b82cf8f6a234dd4758d098085b797e813806fc4c082603ce2f6c0def03f965d5"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.11/webclaw-v0.6.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6246e6eeb586d96678aeb079ebbfa408f89759cf06443b0242543bbf5e45b197"
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
