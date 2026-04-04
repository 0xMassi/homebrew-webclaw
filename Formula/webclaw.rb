class Webclaw < Formula
  desc "The fastest web scraper for AI agents. 67% fewer tokens. Sub-ms extraction."
  homepage "https://webclaw.io"
  license "AGPL-3.0"
  version "0.3.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.9/webclaw-v0.3.9-aarch64-apple-darwin.tar.gz"
      sha256 "70cee7d66ad195750eec8ba0ff135edbd4302967913bd77b5e76c0a0b35f53d6"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.9/webclaw-v0.3.9-x86_64-apple-darwin.tar.gz"
      sha256 "6d58b53dffeea897204ea4e777a74f45105bfe35cb9c8291bebe22e2bfd380db"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.9/webclaw-v0.3.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "15c555b6de7424f903fef62ffdb2d049693badc6d741bb7e57f033dc4c08a54e"
    else
      url "https://github.com/0xMassi/webclaw/releases/download/v0.3.9/webclaw-v0.3.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d3bbd2389e09303b4bafc386f0dc2c850fbc3ee7cd4382b28d23f1920efbb1f5"
    end
  end

  def install
    bin.install "webclaw"
    bin.install "webclaw-mcp"
  end

  test do
    assert_match "webclaw", shell_output("#{bin}/webclaw --version")
  end
end
