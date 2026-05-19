class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.6.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.4/webclaw-v0.6.4-aarch64-apple-darwin.tar.gz"
      sha256 "5814bb101a2afe94aa12e90d84ff1a2ee3365fcf81f26c49b201ae6f98ba9878"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.4/webclaw-v0.6.4-x86_64-apple-darwin.tar.gz"
      sha256 "395fd5dee7afd90c68cec22fad5ab460cca7d17a31ffb93ff4cf3b7a94754bac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.4/webclaw-v0.6.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b0f791f1e440269f8df110633122c4d237ef3f52e556b28851cff8ae174cb223"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.4/webclaw-v0.6.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1e528045b48c31ce93696d1e6e018e0ff42ccf2bbf623af381c1bc23ac8cb481"
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
