class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.6.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.16/webclaw-v0.6.16-aarch64-apple-darwin.tar.gz"
      sha256 "eb3e8876516208fb2723c5004ab2b269c58c4845a50ce3372c79c36a390d7748"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.16/webclaw-v0.6.16-x86_64-apple-darwin.tar.gz"
      sha256 "a32f9e1cd10863324ac08e2693fe806ab3371dac199fb00eabbe685218a7e690"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.16/webclaw-v0.6.16-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c0392a3d578b68ba4f40284ba660eaf67f3ed7a00db282b2cefcc46fda640317"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.6.16/webclaw-v0.6.16-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5cee62622615c72552d60d9a5c9ce07ee56674b0b87eb305feea4ac7e30744aa"
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
