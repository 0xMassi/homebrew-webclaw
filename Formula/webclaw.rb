class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.5.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.4/webclaw-v0.5.4-aarch64-apple-darwin.tar.gz"
      sha256 "1f3d1f1db8baf5e570b86310ec1226070a43951b1c03a4ee7c759be92969f0f9"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.4/webclaw-v0.5.4-x86_64-apple-darwin.tar.gz"
      sha256 "772491a1e33bf4401cb20e874eee281c8a8b390abb59dc953bc1968e679152a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.4/webclaw-v0.5.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7c357aeff268014fc1c2201c86e5ec2d0439a9e8f25196285e36baa37c7aa2a6"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.5.4/webclaw-v0.5.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a645c003d87756884d9c2e20d6a534946ef44deb7b406f302b6c8731864a3c0d"
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
