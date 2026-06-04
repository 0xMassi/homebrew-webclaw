class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.6.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.5/webclaw-v0.6.5-aarch64-apple-darwin.tar.gz"
      sha256 "2cffcb8e549da02b46434af35a32f332987e7ad9fdfeac8208cab8a621fc7d22"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.5/webclaw-v0.6.5-x86_64-apple-darwin.tar.gz"
      sha256 "07178def8ab7add0c33163cabc95401fedbb4d830e9adfc37cb96b41690e9235"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.5/webclaw-v0.6.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "42e76ecf9a101d0f026695c249d3c4b03cc1197d7c91583183bfb02e2f7ca940"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.5/webclaw-v0.6.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "971f58e0ac2885ba23b82c443c1687ecf6313558897df55e8f11fbe57c46cee2"
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
