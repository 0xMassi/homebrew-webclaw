class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.5.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.6/webclaw-v0.5.6-aarch64-apple-darwin.tar.gz"
      sha256 "bcd5e21e6c253cf1fe9278c44cb6ede52dad5152b3620e55a128d32e894007de"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.6/webclaw-v0.5.6-x86_64-apple-darwin.tar.gz"
      sha256 "5a5567e3411d288dadf17f67c7ad890649a10255c7746c1095103f2693d1abfe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.6/webclaw-v0.5.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b9ce316f202beeefd20cb67e8800313d1b71bfc1c27cbbfb95523fca02def69c"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.6/webclaw-v0.5.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a85021e46c4000c3293ca0fbc7cf29e35194114d172715b1f27a4813bf288b4a"
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
